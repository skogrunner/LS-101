# Easy 7 - problem 9 - Multiply All Pairs
# Create a method that takes two Arrays of numbers.
# Return a new Array that contains the product of every possible pair
#   of numbers, sorted by increasing value.

def multiply_all_pairs(nums1, nums2)
  nums1.product(nums2).map { |pair| pair.reduce(:*) }.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
