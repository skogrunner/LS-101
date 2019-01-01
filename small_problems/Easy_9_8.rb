# Easy 9 - problem 8 - Sequence Count
# Create a method that takes two integers as arguments.
# The first integer is a count, and the second integer is
#   the first number of a sequence that the method will create.
# Return an array with size of the count, and value of each
#   element will be a muliple of the starting number.
# If the count is 0, return an empty array.

def sequence(count, value)
  (1..count).map { |i| value * i }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
