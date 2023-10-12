=begin
The || operator returns a truthy value if either or both of its operands are truthy. 
If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy,
and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments is truthy, false otherwise. 
Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

ex.

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

P
input: 2 expressions
output: 1 boolean value
rules:
  -explicit requirements
  -return true if exactly one of the inputs are truthy
  -return false otherwise
  -implicit requirements

A
We are passed two expression that evaluate down to booleans
for example 5.odd?, 4.odd? == true and false. This is a exclusive or example. and will return => true

if bool1 and the opposite of bool2 are both truthy than the method should return true
  -this means that the bool1 is equal to true and bool2 was false thus meeting the requirement for the xor method 
if opposite of bool1 and bool2 are both truthy than the method should return true 

-other wise return false 


=end 

def xor?(bool1, bool2)
  return true if bool1 && !bool2
  return true if !bool1 && bool2
  false
end 

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false