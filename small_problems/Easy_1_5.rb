# Easy 1 - problem 5 - Reverse It (Part 1)
# Write a method that takes one argument, a string.
# It returns the same string with the words in reverse order.

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
