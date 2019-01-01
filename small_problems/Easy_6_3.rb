# Easy 6 - problem 3 - Fibonacci Number Location By Length
# Create a method that takes an integer greater than 1.
# It returns the index of the first number in a Fibonacci series that has
#   the same number of digits as the input argument.
# 1 is the index for the first number in a Fibonacci series.

def find_fibonacci_index_by_length(digits)
  index = 1
  a = 0
  b = 1
  loop do
    a, b = b, a + b
    index += 1
    break unless b < 10**(digits - 1)
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
