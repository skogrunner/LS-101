# Easy 3 - problem 10 - Palindromic Numbers
# Create a method that takes an Integer as an argument.
# Return true if the number is a palindrome, false otherwise.
# A palindromic number reads the same forwards and backwards.

def palindrome?(str)
  str == str.reverse
end

def palindromic_number?(num)
  return false unless num.is_a?(Integer)
  palindrome?(num.to_s)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(-5) == false
