# Easy 1 - problem 8 - Array Average
# Write a method that takes one argument, an array containing positive integers.
# It returns the average of all numbers as an integer, rounded down.

def average(arr)
  return nil if arr.empty?
  arr.sum / arr.size
end

# change return value from integer to float

def average(arr)
  return nil if arr.empty?
  arr.sum.to_f / arr.size
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
