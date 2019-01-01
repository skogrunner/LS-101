# Medium 2 - problem 5 - Triangle Sides
# Create a method that takes three numbers, which represent the sides
#   of a triange.
# Return one of four symbols - :equilateral, :isosceles, :scalene, or :invalid

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  sides.sort!
  return :invalid if sides.first <= 0
  return :invalid if sides[0] + sides[1] <= sides[2]
  return :equilateral if sides[0] == sides[2]
  return :isosceles if sides[0] == sides[1] || sides[2] == sides[1]
  :scalene
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
