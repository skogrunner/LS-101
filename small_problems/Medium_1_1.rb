# Medium 1 - problem 1 - Rotation (Part 1)
# Create a method that takes an Array as the sole argument.
# Return a rotated array with the first element moved to the end.
# Do not mutate/modify the original array.
# Use of Array#rotate or Array#rotate! is not allowed.

def rotate_array(arr)
  arr.drop(1) + arr.take(1)
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

# rotate string

def rotate_string(str)
  str.slice(1..-1) + str[0]
end

puts rotate_string('abc') == 'bca'
puts rotate_string('X') == 'X'

# rotate integer

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

puts rotate_integer(35467) == 54673
puts rotate_integer(0) == 0
puts rotate_integer(7080) == 807
puts rotate_integer(9) == 9
