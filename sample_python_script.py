#!/usr/bin/python


import os
import sys

subject = sys.argv[1]
print ("Hello World Subject"+str(subject))

f = open("filename"+str(subject)+".txt", "a")
f.write("Now the file has more content: subject"+str(subject))
f.close()
