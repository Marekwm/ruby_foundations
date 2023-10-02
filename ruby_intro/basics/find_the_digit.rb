# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place 2) hundreds place 3) tens place 4) ones place
p 1429 / 1000 == 1
p 1429 % 1000 / 100 == 4
p 1429 % 100 / 10 == 2
p 1429 % 10 == 9