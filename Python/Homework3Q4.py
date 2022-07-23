#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import numpy as np
import sympy as sym
from scipy import linalg
import matplotlib.pyplot as plt

f = lambda x:x**2 
a=0 ; b=4 ; N=4
n=4
x=np.linspace(a,b,N+1)
y=f(x)

X=np.linspace(a,b,n*N+1)
Y=f(X)
plt.figure(figsize=(10,6))

#midpoint
plt.subplot(1,3,2)
plt.plot(X,Y,'m')
x_mid=(x[:1]+x[1:])/2
y_mid=f(x_mid)
plt.plot(x_mid,y_mid,'m.',marksize=10)
plt.bar(x_mid,y_mid, width=(b-a)/N, alpha=0.25,align='edge',edgecolor='m')
plt.title('midpoint raiemann summn, N={}' . format(N))
