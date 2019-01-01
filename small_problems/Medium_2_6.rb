# Medium 2 - problem 6 - Tri-Angles
# Create a method that takes three integers, which represent the angles
#   in degrees of a triange.
# Return one of four symbols - :acute, :right, :obtuse, or :invalid

# Right triangle - one angle of the triangle is a right angle (90 degrees)
# Acute triangle - all angles of the triangle are less than 90 degrees
# Obtuse triangle - one angle of the triangle is greater than 90 degrees
# A valid triangle must have all positive angles (not 0 nor negative) and
#   the three angles must sum to 180 degrees

def valid_triangle?(angles)
  angles.all? { |a| a.is_a?(Numeric) && a > 0 } && angles.sum == 180
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid unless valid_triangle?(angles)
  if angles.max > 90
    :obtuse
  elsif angles.max == 90
    :right
  else
    :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
