# Easy 8 - problem 7 - Double Char (Part 1)
# Create a method that takes a String as the only argument.
# Return a new string in which every character in the argument String
#   is doubled.

def repeater(str)
  str.gsub(/(.)/, '\1\1')
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''

def repeater(str)
  str.chars.map { |ch| ch * 2 }.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''

