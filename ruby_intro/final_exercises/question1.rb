# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.each { |num| puts num}

# only values greater than 5

# arr.each { |num|  puts num if num > 5 }

# extract all odd numbers from arr and create a new array

odd_numbers = arr.select {|num| num.odd?}
p odd_numbers

# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.prepend(0)
arr << 11
p arr

# Get rid of 11. And append a 3.
arr.pop
arr.push(3)
p arr

# Get rid of duplicates without specifically removing any one value.
arr.uniq!
p arr