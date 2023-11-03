=begin
Complete the solution so that it returns the number of times the search_text is 
found within the full_text. Overlap is not permitted : "aaa" contains 1 instance of "aa", not 2.

Usage example:
full_text = "aa_bb_cc_dd_bb_e", search_text = "bb"
    ---> should return 2 since "bb" shows up twice


full_text = "aaabbbcccc", search_text = "bbb"
    ---> should return 1

examples:
solution('abcdeb','b') == 2
solution('abcdeb', 'a') == 1
solution('abbc', 'bb')  == 1

Input: 2 strings 
Output: integer
Rules:
  Explicit Requirments:
    first input string will be the string that will be searched  
    the second string will be the search string 
    the returned integer represents how many times the search string is found in the full text
      
Datastructure
Input: 2 strings full_text = 'aabaa',search_text = 'aa'
Output: integer 2
Intermediate: ['aa', 'ab', 'ba', 'aa']
    
Algorithm
create a helper method to get all the substrings from full_text that are of equal to search_text
create an empty array named substrings 
  iterate from 0 to the size of full_text-1
    let each iteration number be represeneted by the variable start_idx
    iterate again from start_idx to the length of full_text - 1
      let each iteration number be represented by the variable end_idx
      if the substring is equal to the length of search_text
      append the substring that is made up by the full_text string at index start_idx to the inclusive 
      range of end_idx
return substrings

///main method 
create a substrings variable and assign the return value of the helper method that
is passed the full_text and the size of search_text
create a count variable = 0
iterate over substrings 
  if the substrings is equal to search_text 
    add one to count
    
return count
=end
# def get_all_substrings(str, length)
#   substrings = []
#   0.upto(str.size - 1).each do |start_idx|
#     start_idx.upto(str.size - 1).each do |end_idx|
#       substrings << str[start_idx..end_idx]
#     end 
#   end 
#   substrings.select{|substring| substring.size == length}
# end 
# def solution(full_text, search_text)
#   substrings = get_all_substrings(full_text, search_text.size)
#   substrings.select {|substring| substring == search_text}.size
# end

# p solution('abcdeb','b') == 2
# p solution('abcdeb', 'a') == 1
# p solution('abbc', 'bb')  == 1

# one thing to note is that instead of adding all the substring to a variable
# you can just evaluate if they are equal to search text as you are making them the 
# add a tally to a count variable 

def solution(full_text, search_text )
  count = 0
  0.upto(full_text.size - 1).each do |start_idx|
    start_idx.upto(full_text.size - 1).each do |end_idx|
      count += 1 if full_text[start_idx..end_idx] == search_text
    end 
  end 
 count
end 
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb')  == 1