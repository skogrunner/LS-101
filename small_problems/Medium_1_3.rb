# Medium 1 - problem 3 - Rotation (Part 3)
# Create a method that takes a non-negative Integer as the sole argument.
# Return the maximum rotation of that number.

# rotate array

def rotate_array(arr)
  arr.drop(1) + arr.take(1)
end

# rotate string

def rotate_string(str)
  rotate_array(str.chars).join
end

# rotate rightmost portion of integer

def rotate_rightmost_digits(num, count)
  num_str = num.to_s
  num_str.prepend('0') if num_str.size < count # only need to prepend one '0'
  (num_str[0...-count] + rotate_string(num_str[-count..-1])).to_i
end

def max_rotation(num)
  numsize = num.to_s.size
  (0...numsize).reduce(num) do |result, i|
    rotate_rightmost_digits(result, numsize - i)
  end
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

# recursive version

def max_rotate(str)
  return str if str.size < 2
  str[1] + max_rotate(str[2..-1] + str[0])
end

def max_rotation(num)
  max_rotate(num.to_s).to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
