# Easy 8 - problem 1 - Sum of Sums
# Create a method that takes an Array of numbers.
# Return the sum of the sums of each leading subsequence of the Array.
# The Array argument will have at least one number.

# The first element gets summed for each subsequence, the second element gets
#   summed for each subsequence except one, and so on.

def sum_of_sums(nums)
  nums.each.with_index.reduce(0) do |total, (num, i)|
    total + (num * (nums.size - i))
  end
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
