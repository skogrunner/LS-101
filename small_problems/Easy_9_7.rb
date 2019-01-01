# Easy 9 - problem 7 - Name Swapping
# Create a method that takes a first name, space, and last name passed as
#   a single String argument.
# Return a string that contains the last name, a comma, a space, and the
#   first name.

def swap_name(name)
  names = name.split
  "#{names.last}, #{names.first}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
