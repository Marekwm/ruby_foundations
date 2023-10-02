# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!?
# Write a program that uses both and illustrate the differences.
hsh1 = {dog: 1}
hsh2 = {food: 'none'}

def non_mutating(hsh1, hsh2)
    hsh1.merge(hsh2)
end 
p non_mutating(hsh1, hsh2)
puts hsh1 

def mutating(hsh1, hsh2)
    hsh1.merge!(hsh2)
end 
mutating(hsh1, hsh2)
puts hsh1