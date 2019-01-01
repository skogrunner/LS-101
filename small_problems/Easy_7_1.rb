# Easy 7 - problem 1 - Combine Two Lists
# Create a method that takes two Arrays of equal size.
# It returns a new Array that contains all elements from both Arrays,
#   in alternation (i.e. Array1[0] Array2[0] Array1[1] Array2[1] etc.)

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
