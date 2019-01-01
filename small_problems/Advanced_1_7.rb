# Advanced 1 - problem 7 - Merge Sorted Lists
# Create a method that takes two sorted Arrays as arguments.
# Return a new Array containing all elements from both arguments
#   in sorted order.
# Input Arrays must not be mutated.
# This method must not use any sort method

def merge(arr1, arr2)
  ndx1 = 0
  ndx2 = 0
  new_arr = []
  while ndx1 < arr1.size && ndx2 < arr2.size
    if arr2[ndx2] < arr1[ndx1]
      new_arr << arr2[ndx2]
      ndx2 += 1
    else
      new_arr << arr1[ndx1]
      ndx1 += 1
    end
  end
  if ndx1 < arr1.size
    new_arr.concat(arr1[ndx1..-1])
  elsif ndx2 < arr2.size
    new_arr.concat(arr2[ndx2..-1])
  end
  new_arr
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]
