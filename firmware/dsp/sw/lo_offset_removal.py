import numpy as np
from matplotlib import pyplot as plt

NFFT = 16384
FS = 1e6
ts = 1./FS
rbw = FS / NFFT
print('rbw', rbw)

t = np.arange(NFFT) * ts
t2 = np.arange(2*NFFT) * ts/2.
d = np.zeros(NFFT)
for i in [0, 200, 1000, 4000, 8000]:
    f = i * rbw
    print(f)
    d += np.sin(t * f * 2*np.pi + np.random.randint(0, 2**31))

d2 = np.zeros(NFFT*2)
d2[::2] = d

imixer = np.cos(t * (100) * rbw * 2 * np.pi)
qmixer = np.sin(t * (100) * rbw * 2 * np.pi)
gi = d*imixer
gq = d*qmixer
plt.figure()
plt.plot(np.fft.fftshift(np.abs(np.fft.fft(gi))), label='gi')
plt.plot(np.fft.fftshift(np.abs(np.fft.fft(gq))), label='gq')
plt.legend()
plt.figure()
plt.plot(np.fft.fftshift(np.angle(np.fft.fft(gi))), label='gi')
plt.plot(np.fft.fftshift(np.angle(np.fft.fft(gq))), label='gq')
plt.legend()
plt.show()

g = gi + 1j*gq

imixer2 = np.cos(t2 * (100) * rbw * 2 * np.pi)
qmixer2 = np.sin(t2 * (100) * rbw * 2 * np.pi)
gi2 = d2*imixer2
gq2 = d2*qmixer2
g2 = gi2 + 1j*gq2

D = np.abs(np.fft.fft(d))**2
G = np.abs(np.fft.fft(g))**2

D2 = np.abs(np.fft.fft(d2))**2
G2 = np.abs(np.fft.fft(g2))**2

plot = plt.plot
shift = np.fft.fftshift

plt.figure()
plt.subplot(2,1,1)
frange = np.arange(-NFFT//2, NFFT//2)
plot(frange, shift(D), label='raw')
plot(frange, shift(G), label='mix')
plt.legend()
plt.subplot(2,1,2)
frange = np.arange(-2*NFFT//2, 2*NFFT//2)
plot(frange, shift(D2), label='raw')
plot(frange, shift(G2), label='mix')
plt.legend()

plt.show()
