# Easy 4 - problem 4 - Leap Years (Part 2)
# Create a method that takes any year greater than 0 as input.
# Return true if the year is a leap year, false otherwise.

# Rules for Gregorian leap year: divisible by 4
#   and either divisible by 400 or not divisible by 100
# Rules for Julian lepa year: divisible by 4
# The Gregorian calendar was adopted in 1752

def leap_year?(year)
  return false unless year.is_a?(Integer) && year > 0
  if year > 1752  # Gregorian leap year check
    (year % 4).zero? && (!(year % 100).zero? || (year % 400).zero?)
  else            # Julian leap year check
    (year % 4).zero?
  end  
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true
