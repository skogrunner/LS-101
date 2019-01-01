# Easy 5 - problem 6 - Letter Counter (Part 1)
# Create a method that takes a String with one or more space-separated words.
# Return a hash containing the number of words of different sizes.

def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each { |word| sizes[word.length] += 1 }
  sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
