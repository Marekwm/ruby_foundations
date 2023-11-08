=begin
Re-order the characters of a string, so that they are concatenated into a new string in
"case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!
The input is restricted to contain no numerals and only words containing the english alphabet letters.
Example:
alphabetized("The Holy Bible") # "BbeehHilloTy"

input: string
output: new string
rules
  explicit requirements
    -sort the argued string by comparing the  case-insensitively-alphabetical-order-of-
    -remove all the white space
datastructute
input:string // "A b B a"
output: string // 'AabB'
intermediate: ['A','b','B','a']

algorithm
convert the string to an array of words with spaces as the delimeter
sort the array by the lowercase value of each element
=end
def alphabetized(str)
  str.delete(' ').chars.sort_by(&:downcase).join
end 
p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"