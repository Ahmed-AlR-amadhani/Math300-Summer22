#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import numpy as np
import sympy as sym
from scipy import linalg
import matplotlib.pyplot as plt

x = sym.symbols('x')
f = x**3 - ((sym.cos(sym.pi * x) **2)/(2 * x**2 + 1)) + 11/3 * x**2 -1 
f_dot=sym.diff(f,x)

print(f_dot)