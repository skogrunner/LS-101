# Easy 7 - problem 7 - Multiplicative Average
# Create a method that takes an Array of integers
# Multiply all numbers together and divide the result by size of array.
# Then print the result rounded to three decimal places.

def show_multiplicative_average(nums)
  return nil if nums.empty?
  result = nums.reduce(:*) / nums.size.to_f
  puts format('The result is %.3f', result)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
