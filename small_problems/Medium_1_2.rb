# Medium 1 - problem 2 - Rotation (Part 2)
# Create a method that takes two positive Integers as arguments.
# The first integer represents a number to be rotated.
# The second integer regpresents the number of digits of the first
#   number to be rotated, counting from the rightmost digit.
# For example, (735291, 2) would return a result of 735219, as only
#   the last two digits are rotated.
# Rotation moves the first digit in the number to be rotated to the
#   last position, same as in the previous exercise problem.

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
  (num_str[0...-count] + rotate_string(num_str[-count..-1])).to_i
end

puts rotate_rightmost_digits(730291, 1) == 730291
puts rotate_rightmost_digits(730291, 2) == 730219
puts rotate_rightmost_digits(730291, 3) == 730912
puts rotate_rightmost_digits(730291, 4) == 732910
puts rotate_rightmost_digits(730291, 5) == 702913
puts rotate_rightmost_digits(730291, 6) == 302917
