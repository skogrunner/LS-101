# Easy 4 - problem 5 - Multiples of 3 and 5
# Create a method that takes an integer greater than 1
# Return the sum of all numbers between 1 and the integer (inclusive)
#   that are divisible by either 3 or 5

def multisum(num)
  return nil unless num.is_a?(Integer) && num > 1
  (1..num).select { |i| (i % 3).zero? || (i % 5).zero? }.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
