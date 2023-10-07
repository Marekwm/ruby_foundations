# PEDAC
# -UNDERSTAND THE PROBLEM
#   -read the problem description
#   -identity inputs/outputs
#   -identify rule/requirements
#   -ask clarifiying questions
#   -examine all examples
# -EXAMPLES/TEST CASES
#   -understand how the input translates to outputs
#   -identify edge cases
#     -Can my program handles 0s, or empty array?
#   -create the test cases and confirm outputs
# -DATA STRUCTURES
#   -what kind of data are you primarily dealing with?
#     -strings, arrays, numbets, objects, etc.
#   -this helps you to focus on methods for these types
# -ALGORITHM
#   -step by step process that takes your from input to output
#   -handles edge cases and valid example inputs
#   -your code will depend on your algorithm
# -CODE
#   -time to write code!
#   -use everything you've gathered in your pedac to write the code
# -DEBUG(if needed)
#   -if there are errors in output, don't panic!
#   -carefully review algorithm before looking at your code
#   -once you've identified the issue, change the algorithm first, then code
  
# we'd like for this message to read a little better. We want to separate the last item with a "or", so that it reads:  
# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9

# Currently, we're using the Array#join method, which can only insert a delimiter between the array elements,
# and isn't smart enough to display a joining word for the last element.

# Write a method called joinor that will produce the following result:
# Test cases 
# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
# joinor([1])                   # => "1"

# from
# prompt "Choose one of the following squares #{empty_squares(brd).join(", ")}"
# to 
# prompt "Choose one of the following squares #{joinor(empty_squares(brd))}"

# test_array = [1, 2 ,4 ,5]

# INPUT: array
# OUTPUT: string with specified delimeters
# RULES
#   -When a default method invocation occurs 
#     -the delimeter for array with more than 2 elements is ',' and for the last it's 'or'
#   -When a method is invoked with a 2 element array the default delimeter is 'or'
#   -When a method is invoked with a 1 element array, return only the objects value
# DATA STRUCTURE
#   -Arrays are the focus of this problem
# ALGORITHM
# START
# IF size of array < 2 
#   RETURN element
# IF size of array == 2
#   RETURN the 2 elements with delimeter 'or' unless argument is given
# IF size of array > 2
#   RETURN  the elements with delimeter ',' and last with 'or' unless arguments are given
# END


def joinor(arr, delimeter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else 
    arr[-1] = "#{word} #{arr[-1]}"
    arr.join(delimeter)
  end 
end
# Test cases 
p joinor([1, 2])  ==  "1 or 2"
p joinor([1, 2, 3]) == "1, 2, or 3"
p joinor([1, 2, 3], '; ') ==  "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')==  "1, 2, and 3"
p joinor([1])  == '1'