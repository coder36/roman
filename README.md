Roman numerals Kata
===================

Write a progarm to:

1) Convert from a decimal number to the corresponding roman numeral
2) convert from roman numeral to decimal number.

Use test driven development.

Notes
------
You only need to consider all the numbers from 1 - 3999

I = 1
V = 5
X = 10
L = 50
C = 100
M = 1000

XCIX = 99   
CMXCIX = 999 
MMMCMXCIX = 3999


Solution
--------

My solution is based on creating a lookup table which can then be keyed using the following algorithm:

1000's    = ( (n/1000) % 10 ) * 1000
100's     = ( (n/100) % 10 ) * 100
10's      = ( (n/10) % 10 ) * 10
1's       = n % 10


0 => "",
1 => "I",
2 => "II",
3 => "III",
4 => "IV",
5 => "V",
6 => "VI",
7 => "VII",
8 => "VIII",
9 => "IX",
10 => "X",
20 => "XX",
30 => "XXX",
40 => "XL",
50 => "L",
60 => "LX",
70 => "LXX",												
80 => "LXXX",
90 => "XC",	
100 => "C",
200 => "CC",
300 => "CCC",
400 => "CD",
500 => "D",
600 => "DC",
700 => "DCC",
800 => "DCCC",
900 => "CM",
1000 => "M",  
2000 => "MM",
3000 => "MMM"	


For the reverse ie. converting from roman numeral to decimal I created another lookup table which contains all the roman numerals for 1 - 3999 ... easy!

