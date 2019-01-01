# Easy 6 - problem 10 - Right Triangles
# Create a method that takes a positive integer 'n'.
# It displays a right triangle composed of asterisks with the horizontal and
# vertical sides each having n asterisks.

def triangle(n)
  return nil unless n.is_a?(Numeric) && n > 0
  1.upto(n) { |i| puts "#{' ' * (n - i)}#{'*' * i}" }
end

triangle(5)
triangle(9)
triangle(1)
triangle(0)

# upside down

def reverse_triangle(n)
  return nil unless n.is_a?(Numeric) && n > 0
  0.upto(n - 1) { |i| puts "#{' ' * i}#{'*' * (n - i)}" }
end

reverse_triangle(5)
reverse_triangle(9)
reverse_triangle(1)
reverse_triangle(0)
