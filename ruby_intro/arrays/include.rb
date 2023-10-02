# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

# manual include using a method definiton
def include_num(num, arr)
    if arr.select{|n| n == num}.empty?
        return false
    else 
        return true
    end
end 
p include_num(number, arr)

# using the built in include? method
puts arr.include?(number)