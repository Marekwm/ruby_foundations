=begin
P - Understanding the Problem:
- Goal: understand what you're being asked to do
  - Read the problem description
  - Identify expected input and output
  - Establish rules/requirements/define the boundaries of the problem
  - Ask clarifying questions
  - Take your time on this step!

E - Examples and Test Cases:
- Goal: further expand and clarify understanding about what you're being asked to do 
  - Use examples/test cases to confirm or refute assumptions made about the problem in the previous step

D - Data Structures:
- Goal: begin to think logically about the problem
  - What data structures could we use to solve this problem?
    - What does our data look like when we get it? (input)
    - What does our data look like when we return it? (output?)
    - What does our data need to look like in the intermediate steps?

A - Algorithm:
- Goal: write out steps to solve the given problem in plain English
  - A logical sequence of steps for accomplishing a task/objective
  - Start high level, but make sure you've thought through and have provided sufficient detail for working through the most difficult parts of the problem
  - Stay programming-language-agnostic
  - Can create substeps for different parts or separate concerns into a helper method
  - You can (and should) revisit your algorithm during the implementation stage if you need to refine your logic
  - Before moving onto implementing the algorithm, check it against a few test cases

C - Implementing a Solution in Code:
- Goal: translate the algorithm into your programming language of choice
  - Code with intent. Avoid hack and slash 
- TEST FREQUENTLY
  - Use the REPL or run your code as a file
  - When testing your code, always have an idea in place of what you're expecting
  - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code
  
Mad libs are a simple game where you create a story template with blanks for words. 
You, or another player, then construct a list of words and place them into the story, 
creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

ex.

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

P 
INPUT: multiple strings one at a time, specified by the input request ex(enter a noun:)
OUTPUT: A complete message, using all the input strings together.
RULES:
  Explicit Requirements:
    -get input from user based on desired types of words you want
    - the user prompts should be to get a noun, verb, adverb and an adjective
    -once you get all the words
      -display complete message using all the user inputs within the story you created 
D
What data structures could we use to solve this problem?
We could use an array to store the words in order one by one for each prompt like such:
['dog', 'walk', 'hot', 'slowly']
Another way is to use a hash:
{verb: 'walking', noun: 'dog'}

if needed the values could be stored in an array if multiple verbs or nouns were require

Input: user prompted strings for noun, verb, adverb and an adjective
Ouput: complete story using each word in a certain place within the story

during the intermediate step our data would look like 
['dog', 'walk', 'hot', 'slowly'] or {verb: 'walking', noun: 'dog'}

A 
create an empty array named `words` 
1.prompt user for input 
2.append the string into words
3.repeat steps 1 and 2 until you have gotten all 4 strings required
display the story with all the words added into there particular places 
=end 

words = []
puts "Enter a noun:"
words << gets.chomp

puts "Enter a verb ending in 'ing' :"
words << gets.chomp

puts "Enter an adverb:"
words << gets.chomp

puts "Enter an adjective:"
words << gets.chomp

puts "The #{words[0]} was #{words[1]} #{words[2]}, it was #{words[3]} time!"