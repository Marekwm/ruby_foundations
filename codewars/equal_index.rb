=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the
integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this
happen, return -1.
For example:
Let's say you are given the array [1,2,3,4,3,2,1]: Your method will return the index 3, because at the 3rd position of the
array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
Let's look at another one.
You are given the array {1,100,50,-51,1,1}: Your function will return the index 1, because at the 1st position of the array,
the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.
Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.
Note: Please remember that in most programming/scripting languages the index of an array starts at 0.
Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
Output:
The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits
these rules, then you will return -1.
Note:
If you are given an array with multiple answers, return the lowest correct index.
input: array of integers
output: integer
rules 
  explicit requirements:
    -input is an array integers - + 
    -return the index position where to sum of the element to the right and to the left 
    are equal to each other 
    -if there are no equal sides in the entire array return -1
    
example [2,3, 18, 5] => 2
datastructure:
Input: array //[2,2,2,5,6]
Output: integer // 3

algorithm 
iterate over a range from 0 upto the size of the array - 1 
  let the number of the each iteration be epresented by idx
    create 2 sub arrays and then evaluate the sums 
    the first sub array will reference the non-inclusize range of 0 to the current value of idx
    the second sub array will reference the inclusive range of the current value of idx + 1 to the end of the array (-1)
    return the current value of idx if the sum of both sub arrays are equal to each other
  /
if nothing was returned then return -1
=end
def find_even_index(arr)
  0.upto(arr.size - 1).each do |idx|
    return idx if arr[0...idx].sum == arr[(idx + 1)..-1].sum
  end 
  -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
