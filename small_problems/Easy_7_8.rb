# Easy 7 - problem 8 - Multiply Lists
# Create a method that takes two Arrays of numbers.
# Return a new Array that contains the product of each pair of numbers
#   with the same index. The two Arrays will be of the same size.

def multiply_list(nums1, nums2)
  nums1.zip(nums2).map { |pair| pair[0] * pair[1] }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
