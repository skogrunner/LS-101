# Easy 5 - problem 4 - Letter Swap
# Create a method that takes a string of words.
# Return a string with the first and last letters of each word swapped.

def swap(phrase)
  phrase.split.each { |word| word[0], word[-1] = word[-1], word[0] }.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
