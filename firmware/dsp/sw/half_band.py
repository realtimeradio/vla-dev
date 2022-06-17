import numpy as np
from matplotlib import pyplot as plt

NFIR = 64
s = np.sinc(np.linspace(-16,16,NFIR))
w = np.hamming(NFIR)
w = np.ones(NFIR)
a = s*w
a /= np.sum(a)

d = np.random.normal(size=512*1024)
f = np.convolve(d, a, mode='same')

dr = d.reshape(512,1024)
fr = f.reshape(512,1024)

D = np.abs(np.fft.rfft(dr, axis=1))**2
F = np.abs(np.fft.rfft(fr, axis=1))**2

Ds = D.sum(axis=0)
Fs = F.sum(axis=0)

plot = plt.semilogy

plt.figure()
frange = np.linspace(0,1,Ds.shape[0])
plot(frange, Ds)
plot(frange, Fs)
plt.xlim(0.4,0.6)

plt.figure()
plt.plot(a, '-o')
plt.show()

exit()

b = np.ones(1024)
b[512:] = 0

B = np.fft.fftshift(np.fft.fft(b))
plot(B.real, label='real')
plot(B.imag, label='imag')
plot(np.abs(B), label='abs')
plt.legend()
plt.show()
