import numpy as np
from matplotlib import pyplot as plt

def quantize(x, nbit, nbp, signed=True):
    x = int(x * 2**nbp)
    if signed:
        if x >= 2**(nbit-1):
            x = 2**(nbit-1) - 1
        if x < -(2**(nbit-1)):
            x = -(2**(nbit-1))
    else:
        if x >= 2**(nbit):
            x = 2**(nbit) - 1
        if x < 0:
            raise ValueError
    return x / (2.**nbp)

FS = 4e9 # sample rate in Hz
FLO = 250e3 # LO in Hz

ts = 1./FS # sample time in s

n = np.arange(0, 2**15)
t = n*ts

# phase per sample
dphase = (FLO / FS)
print(dphase)
dphase = quantize((FLO / FS), 24, 21) #* np.pi
print(dphase)

lo = (dphase * n) % 1

sin = np.sin(lo * 2 * np.pi)

plt.plot(lo)
plt.plot(sin)
plt.show()
