#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import numpy as np
import sympy as sym
from scipy import linalg
import matplotlib.pyplot as plt

def summ(x=[],N=[]):
    x_total=[]
    for i in range(len(x)):
        total=0
        for a in range(1,N+1):
            total += (x[i]**a)/a
        x_total.append(total)
    plt.plot(x,x_total)
            
summ(x=[3,6,7,8,9],N=10)