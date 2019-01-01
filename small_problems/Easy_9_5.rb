# Easy 9 - problem 5 - Uppercase Check
# Create a method that takes a String as the only argument.
# Return true is ALL alphabetic characters in the string are uppercase.
# Return false otherwise.
# Characters that are not alphabetic can be ignored.

def uppercase?(str)
  !str.match(/[a-z]/)
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
