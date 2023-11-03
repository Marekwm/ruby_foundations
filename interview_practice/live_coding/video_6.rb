=begin
You are gonna be given an array of integers, your job is to take that array and find
an index N where the sum of integers on the left are equal to the sum of integers on the right

ex: [1, 2, 3, 4, 3, 3] 6 on either side of 4 so return the index of 4 => 3
if you cant find an even index return -1

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, -51, 50, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 30, 10, 10, 40, 15, 5]) == 3
p find_even_index([10, -80, 20, 30, 30]) == 0
p find_even_index([-1, -2, -3, 4, -3, -2, -1]) == 3

Input: array of any integer
Output: integer reperesent an index in the input array, or -1 if no index found
Rules:
  Explicit requirements:
    -find the index placement where the sum of the integer to it's left and right are equal 
      return the index if you find it
    -if you cant find an even index then return -1
    
Datastructure
Input: array; [6,4,6]
Output: integer: 1
Intermidiate: evaluate if the sum of [6] and [6] are equal to one another

algorithm
iterate over a non inclusive range from 0 to the size of the array
  using the numbers of iteration as an index value
  evaluate if the sum of the integer from the index 0 to current index are equal to the 
  integer from current index to -1
  if true return that number
if nothing is evaluated as true then return -1

=end 
def find_even_index(arr)
  (0...arr.size).each do |idx|
    return idx if arr[0...idx].sum == arr[(idx + 1)..-1].sum
  end 
  -1
end 

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, -51, 50, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 30, 10, 10, 40, 15, 5]) == 3
p find_even_index([10, -80, 20, 30, 30]) == 0
p find_even_index([-1, -2, -3, 4, -3, -2, -1]) == 3