# Easy 1 - problem 6 - Reverse It (Part 2)
# Write a method that takes one argument, a string containing one or more words.
# It returns the same string with all words of five or more letters reversed.

def reverse_words(phrase)
  phrase.split.map { |word| word.length > 4 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
