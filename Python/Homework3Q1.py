#!/usr/bin/env python3
# -*- coding: utf-8 -*-

 
import numpy as np
import sympy as sym
from scipy import linalg

a=np.array([[1, 2],[3,4]])
b=np.array([[5],[8]])
x=np.linalg.solve(a,b)

display('matrix x:',x)
