# Medium 2 - problem 1 - Longest Sentence
# Create a method that reads the content of a text file and prints the longest
#   sentence in the file based on the number of words.
# Also print the number of words in the longest sentence.
# Sentences are delimited by '. ', '! ', or '? ' (period, exclamation point, or
#   question mark, followed by a space)
# Words are space delimited.

def longest_sentence(filename)
  content = File.read(filename)
  sentences = content.split(/[.!?]\s/)
  max_sentence = sentences.max { |a, b| a.split.size <=> b.split.size }
  puts max_sentence
  puts "There are #{max_sentence.split.size} words in this sentence."
end

longest_sentence('gettysburg.txt')
longest_sentence('mary_shelley.txt')

def longest_word(filename)
  content = File.read(filename)
  words = content.split(/[^a-z]+/i)
  max_word = words.max { |a, b| a.size <=> b.size }
  puts max_word
  puts "There are #{max_word.size} letters in this word."
end

longest_word('gettysburg.txt')
longest_word('mary_shelley.txt')
