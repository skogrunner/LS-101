# Easy 8 - problem 8 - Double Char (Part 2)
# Create a method that takes a String as the only argument.
# Return a new string in which every consonant character in the argument
#   is doubled.
# A consonant is a letter that does not include aeiou (these are vowels).

def double_consonants(str)
  str.gsub(/([b-z&&[^eiou]])/i, '\1\1')
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
