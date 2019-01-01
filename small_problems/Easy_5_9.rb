# Easy 5 - problem 9 - ddaaiillyy ddoouubbllee
# Create a method that takes a String argument.
# Return a string based on the original string with all consecutive duplicate
#   characters reduced to a single character
# NOT ALLOWED to use String#squeeze or String#squeeze! (hand slap!!)

def crunch(str)
  return '' if str.empty?
  str.chars.reduce(str[0]) do |new_str, ch|
    new_str + (ch == new_str[-1] ? '' : ch)
  end
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

# now for regular expressions!

def crunch(str)
  str.gsub(/(.)\1{0,}/, '\1')
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
