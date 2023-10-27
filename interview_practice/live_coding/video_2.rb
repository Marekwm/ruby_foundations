=begin
Create a method that takes a positive integer and returns the next bigger 
number formed by the same digits 
ex:
12 => 21
513 => 531
2017 => 2071
if no bigger number can be made return -1
9 => -1 
22 => -1
621 => -1

next_bigger_num(9) == -1
next_bigger_num(12) == 21
next_bigger_num(513) == 531
next_bigger_num(2017) == 2071
next_bigger_num(111) == -1
next_bigger_num(123456789) == 123456798

P
Input: positive integer
Output: integer: -1 if no bigger number can be found