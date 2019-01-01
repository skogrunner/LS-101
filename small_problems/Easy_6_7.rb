# Easy 6 - problem 7 - Halvsies
# Create a method that takes an Array as an argument.
# Return an Array containing two sub-Arrays.
# Each sub-Array will contain exactly half of the argument Array.
# If the argument Array is of an odd size, the first sub-Array will have one
#   more element than the second sub-Array.

def halvsies(arr)
  new_arr = []
  new_arr << arr.take((arr.size + 1) / 2)
  new_arr << arr.drop((arr.size + 1) / 2)
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
