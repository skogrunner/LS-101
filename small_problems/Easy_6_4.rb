# Easy 6 - problem 4 - Reversed Arrays (Part 1)
# Create a method that takes an Array.
# Return the same Array object, but mutated with its elements reversed.
# Use of Array#reverse or Array#reverse! is not allowed.

def reverse!(arr)
  stack = []
  arr.each { |element| stack.push(element) }
  0.upto(arr.size - 1) { |i| arr[i] = stack.pop }
  arr
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!(list) # => []
puts list == []
