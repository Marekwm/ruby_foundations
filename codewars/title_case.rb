=begin
A string is considered to be in title case if each word in the string is either (a) capitalised
(that is, only the first letter of the word is in upper case) or (b) considered to be an exception
and put entirely into lower case unless it is the first word,which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of
minor words will be given as a string with each word separated by a space. Your function should ignore the case of the
minor words string -- it should behave in the same way even if the case of the minor word string is changed.

input:1 string to be capitalized, possible second string for non capitalized words
output:string with every word capitalized execpt the second string words 
explicit requirements:
  -given one string with words seperated by spaces, 1st input string
  -if you are given a second input string, the words in there are specified to not be capitalized in the first string
  -capitalize all the strings and make sure all the other characters are lowercase
datastructures
input: 2 strings //'a clash of KINGS', 'a an the of'
output: capitalized string// 'A Clash of Kings' 
notice how 'of' was not capitalized but 'a' was 
regardless the first word is always capitalized
intermediate: array of words for the first input strings, array of words for the second string

algorithm
convert the second string to an array of words called `do_not_cap`
convert the first argued string to an array of words 
iterate over the first argued string array of words with the index value 
    if the current index is 0
        make all the characters lower case and capitalize the first one
    if the current word is in do_not_cap
        make all the characters lowercase
    otherwise
         make all the characters lower case and capitalize the first one
    return the array converted back to a string of words seperated by spaces 
=end
def title_case(str, exceptions = '')
  do_not_cap = exceptions.downcase.split
  count = 1
  str.split.map do |word|
    if count == 1
      count += 1
      word.capitalize
    elsif do_not_cap.include?(word.downcase)
      word.downcase
    else 
      word.capitalize
    end 
  end.join(' ')
end 

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'