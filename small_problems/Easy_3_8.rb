# Easy 3 - problem 8 - Palindromic Strings (Part 1)
# Create a method that takes a String as an argument.
# Return true if the argument is a palindrome, false otherwise.
# For this exercise, case matters, as well as punctuation and spaces.

def palindrome?(str)
  str.is_a?(String) && str == str.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# Create a method that checks for palindromic arrays

def palindrome?(arr)
  arr.is_a?(Array) && arr.eql?(arr.reverse)
end

puts palindrome?([4,6,3]) == false
puts palindrome?([4,6,4]) == true
puts palindrome?(['tiny']) == true

# Create a palindrome method that can take either a string or an array

def palindrome?(input)
  (input.is_a?(String) || input.is_a?(Array)) && input.eql?(input.reverse)
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([4,6,3]) == false
puts palindrome?([4,6,4]) == true
puts palindrome?(['tiny']) == true
