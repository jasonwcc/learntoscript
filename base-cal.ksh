#!/usr/bin/ksh
# Script name : basecal.ksh
# To convert decimal value to binary and vice versa

typeset -i8 num8
typeset -i  num1
typeset -i2 num2
typeset -i10 num10
typeset -i16 num16

print "Please enter a number,please?\c :"
read input

num1=$input
print -R "-i num is $num1"
num10=$input
print -R "-i10 num10 $num10"
num2=$input
print -R "-i2 num2 is $num2"
num8=$input
print -R "-i8 num8 is $num8"
num16=$input
print -R "-i16 num16 is $num16"

