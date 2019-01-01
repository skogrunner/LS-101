# Easy 6 - problem 6 - Combining Arrays
# Create a method that takes two Arrays as arguments.
# Return an Array containing all values from the original Arrays, but
#   with no duplicate values.

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([1, 3, 5], []) == [1, 3, 5]
puts merge([], []) == []
puts merge([1, 1, 1], [2, 2, 2, 1]) == [1, 2]
