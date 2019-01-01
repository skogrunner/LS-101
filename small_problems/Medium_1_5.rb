# Medium 1 - problem 5 - Diamonds!
# Create a method that takes an odd positive Integer n as the only argument.
# Display a 4-point diamond in an n x n grid.

def diamond(n)
  mid = (n + 1) / 2
  1.upto(n) do |i|
    stars = ((mid - (i - mid).abs) * 2) - 1
    puts(('*' * stars).center(n))
  end
end

diamond(1)
diamond(5)
diamond(9)
diamond(21)

# modified to print only the outline of the diamond

def outline(str)
  return str if str.size < 3
  str[0] + (' ' * (str.size - 2)) + str[-1]
end

def diamond_outline(n)
  mid = (n + 1) / 2
  1.upto(n) do |i|
    stars = ((mid - (i - mid).abs) * 2) - 1
    puts(outline('*' * stars).center(n))
  end
end

diamond_outline(1)
diamond_outline(5)
diamond_outline(9)
diamond_outline(21)
