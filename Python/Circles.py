#!/usr/bin/env python3
import numpy as np

class circle():
    def __init__(self,cx=0,cy=0,r=1):
        self.cx =cx
        self.cy= cy
        self.radius=r
        
        
    def area(self):
        ## code to get the area of our circle
        ##return np.pi*(self,r**2)
        return self.radius**2*np.pi
        
    def circumference(self):
        ##code to get the circumference of our circle
        ##return np.pi**2(self,r)
        return self.radius*2*np.pi
        
        
    def inside(self,x,y):
        ## code to figure out if enterd point is inside our circle 
        distance = np.sqrt((self.cx-x)**2 +(self.cy-y)**2)
        
        if distance <= self.radius:
            print("point in circle")
        else:
            print("point outside the circle")
        ##def disX(self):
         ##   return x-self.cx
        ##def disY(self):
          ##  return y-self.cy
        ##return self.cx**2+self.cy > self.radius
        ##print("outside of the circle")

a=circle()


print(a.inside(0.5,0.7))
