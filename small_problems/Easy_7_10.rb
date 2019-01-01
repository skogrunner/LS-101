# Easy 7 - problem 10 - The End Is Near But Not Here
# Create a method that takes a String of words.
# Return the next to last word.
# There will always be at least two words.

def penultimate(str)
  words = str.split
  words[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

# Now return the middle word.

def middle(str)
  words = str.split
  if words.empty?
    ''
  elsif words.size.odd?
    words[words.size / 2]
  else
    words[(words.size / 2) - 1, 2].join(' ')
  end
end

puts middle('') == ''
puts middle('Launch School is great!') == 'School is'
puts middle('My name is Gary Kraght') == 'is'
