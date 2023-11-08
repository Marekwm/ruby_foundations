=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.
Usage example:
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

input:2 strings
Output: integer
rules:
  explicit requirements:
    -the 1st string (full_text) it's the string that we will search
    -the 2nd string (search_text) is the string that we will search for in the full_text
    -return the count of how many times the search_text is found in the full_text
    -the count only includes unique substrings so you cant use a character previously counted in another substring

datastructure
input: 2 strings // 'abbc', 'bb'
output: integer // 1
intermediate: substrings made from the full_text performing evaluation as they are being create 
this will qualify the substring, and since we just need a count we dont need to save the substring
but just add a tally of valid ones

Algorithm
create a count variable assign it to 0
create substrings using iterations of ranges
we will iterate from 0 upto the size of the full_text - 1
  let the iteration number be represented by idx1
  iterate again from idx1 upto the size of the full_text - 1
    let the iteration number be represented by idx2
    
    now we will create substring by referencing ranges of indeces from full_text
    the range of indeces on each iteration will be from an inclusive range of idx1 to idx2
    
    we will then evaluate if the substring is equal to the search_text 
      if so add 1 to count 
return count once completed iteration
=end

def solution(full_text, search_text)
  count = 0
  0.upto(full_text.size - 1).each do |idx1|
    idx1.upto(full_text.size - 1).each do |idx2|
      count += 1 if full_text[idx1..idx2] == search_text
    end 
  end 
  count
end 
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
