# Easy 5 - problem 5 - Clean up the words
# Create a method that takes a String.
# Return the string with all non-alphabetic characters replaced with spaces.
# The string must not have more than one space in a row, no consecutive spaces.

def cleanup(str)
  str.gsub(/[^a-z]+/i, ' ')
end

puts cleanup("---whaT's my +*& line?") == ' whaT s my line '

# same method without regular expressions

def cleanup2(str)
  str.tr('^a-zA-Z', ' ').squeeze(' ')
end

puts cleanup2("---whaT's my +*& line?") == ' whaT s my line '
