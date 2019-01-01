# Easy 6 - problem 5 - Reversed Arrays (Part 2)
# Create a method that takes an Array.
# Return a new Array object, with the elements of the original array reversed.
# Use of Array#reverse or Array#reverse! is not allowed.

def reverse(arr)
  new_arr = arr.dup
  0.upto((arr.size / 2) - 1) do |i|
    new_arr[i], new_arr[arr.size-i-1] = new_arr[arr.size-i-1], new_arr[i]
  end
  new_arr
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true

# now do it using Enumerable#each_with_object

def reverse(arr)
  arr.each_with_object([]) { |element, a| a.unshift(element) }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true
