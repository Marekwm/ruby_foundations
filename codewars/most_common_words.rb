=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most
occurring words, in descending order of the number of occurrences.
Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy
punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty
array if a text contains no words.
Examples:

top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")

# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

# => ["e", "ddd", "aa"]

top_3_words(" //wont won't won't")

# => ["won't", "wont"]

Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.

input: string 
output: array of the 3 most common words 
explicit requirements:
  -do not inlcude any non alphabetical characters for the exception of '
  
datastructures
input: string// "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"
output: array // ["e", "ddd", "aa"]
intermediate: //
helper:

algorithm
create a an empty hash with default value
scan the argued string for case insensitive complete words 
  assign the found word to a key as a lowercase form in the hash and add 1 for every occurence
then sort through the hash once finished count 
  create a 2 element array with the -value, key so the sort is done from largest to smallest
perform transformation on the 3 three subarrays and only return the key of each subarray
=end

def top_3_words(text)
  word_count = Hash.new(0)

  text.scan(/\b[a-z']+\b/i) do |word|
    word_count[word.downcase] += 1
  end

  word_count.sort_by { |word, count| [-count, word] }[0, 3].map { |word, _| word }
end
p top_3_words("a a a b c c d d d d e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA, Aa bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words(" //wont won't won't ") == ["won't", "wont"]
p top_3_words(" , e .. ") == ["e"]
p top_3_words(" ... ") == []
p top_3_words(" ' ") == []
p top_3_words(" ''' ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]