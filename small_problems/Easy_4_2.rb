# Easy 4 - problem 2 - What Century is That?
# Create a method that takes a year as input and returns the century.
# The return value should be s tring that begins with the century number
#   and end with the appropriate ending (st, nd, rd, or th)
# A new century begins in the year that ends with 01.
# For example,  20th century = 1901 to 1999

def century(year)
  ending = %w[th st nd rd th th th th th th]
  century = (year + 99) / 100
  if [11, 12, 13].include?(century % 100)
    century.to_s + 'th'
  else
    century.to_s + ending[century % 10]
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
