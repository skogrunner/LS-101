# Easy 2 - problem 2 - How big is the room?
# Create a program that asks for the length and width of a room, in meters.
# The area of the room is then displayed in both square meters and square feet.

# initialize variables
SQMETERS_TO_SQFEET = 10.7639
length = 0
width = 0

# request and validate input
until length != 0
  puts 'Enter the length of the room in meters:'
  length = Integer(gets) rescue 0
end
until width != 0
  puts 'Enter the width of the room in meters:'
  width = Integer(gets) rescue 0
end

# display area
area_meters = (length * width).to_f.round(2)
area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area_meters} " +
     "square meters (#{area_feet} square feet)."

# modify program to ask for input measurements in feet.
# display output in square feet, square inches, and square centimeters

# more constants
SQFEET_TO_SQINCHES = 144.0
SQFEET_TO_SQCENTIMETERS = 929.03
length = 0
width = 0

# request and validate input
until length != 0
  puts 'Enter the length of the room in feet:'
  length = Integer(gets) rescue 0
end
until width != 0
  puts 'Enter the width of the room in feet:'
  width = Integer(gets) rescue 0
end

# display area
area_feet = (length * width).to_f.round(2)
area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)
area_centimeters = (area_feet * SQFEET_TO_SQCENTIMETERS).round(2)
puts "The area of the room is #{area_feet} " +
     "square feet (#{area_inches} square inches or " +
     "#{area_centimeters} square centimeters)."
