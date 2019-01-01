# Advanced 1 - problem 2 - Seeing Stars
# Create a method that takes a positive odd integer n as the sole argument.
# n will be at least 7.
# Display an 8-pointed star.

def star(n)
  return nil unless n.is_a?(Numeric) && n.odd? && n >= 7
  1.upto(n/2) do |i|
    puts ((('*' + (' ' * (n/2 - i))) * 2) + '*').center(n)
  end
  puts '*' * n
  (n/2).downto(1) do |i|
    puts ((('*' + (' ' * (n/2 - i))) * 2) + '*').center(n)
  end
end

star(7)
star(9)
star(13)