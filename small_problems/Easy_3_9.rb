# Easy 3 - problem 9 - Palindromic Strings (Part 2)
# Create a method that takes a String as an argument.
# Return true if the argument is a palindrome, false otherwise.
# For this exercise, case does not matter, and all non-alphanumeric characters
#   should be ignored.

def real_palindrome?(str)
  return false unless str.is_a?(String)
  check_str = str.upcase.delete('^A-Z0-9')
  check_str == check_str.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
