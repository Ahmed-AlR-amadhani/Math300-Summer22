#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import sympy as sym
from scipy import linalg
import matplotlib.pyplot as plt

def summ(N=100):
    total=0
    n_bar=[]
    for a in range(1,N+1):
        total += ((-1)**(a+1))*(1/a)
        n_bar.append(total)
    plt.plot(range(1,N+1), n_bar)
        
print(summ())
