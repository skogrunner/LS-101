# Easy 9 - problem 4 - Counting Up
# Create a method that takes an integer as the only argument.
# Return an Array of all integers, in sequence, between 1 and
#   the argument.

def sequence(num)
  return [] unless num.is_a?(Integer)
  (1..num).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(0) == []
