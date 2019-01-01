# Easy 5 - problem 7 - Letter Counter (Part 2)
# Refer to Easy 5 - problem 6
# Modify the word_sizes method to exclude non-letters when figuring word size.

def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each { |word| sizes[word.delete('^a-zA-Z').length] += 1 }
  sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
