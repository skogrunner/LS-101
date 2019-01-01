# Medium 2 - problem 7 - Unlucky Days
# Create a method that takes one integer, which represent a year.
# Return the number of Friday the 13th dates in the year.

# There are fourteen possibilities, depending on the weekday of Jan 1
#   and whether or not the year is a leap year. Sunday has an index of 0.

require 'date'

LEAP = [3, 2, 1, 2, 2, 1, 1].freeze
NON_LEAP = [2, 2, 2, 1, 3, 1, 1].freeze

def friday_13th(year)
  new_year = Date.new(year, 1, 1)
  if new_year.leap?
    LEAP[new_year.wday]
  else
    NON_LEAP[new_year.wday]
  end
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
