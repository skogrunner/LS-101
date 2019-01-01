# Easy 7 - problem 3 - Capitalize Words
# Create a method that takes a String argument.
# Return a new string that contains the original value of the argument,
#   but with the first letter of each word capitalized and all other letters
#   lowercase.

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# other solutions

def word_cap(str)
  str.downcase.split.map { |word| word[0].upcase + word[1..-1] }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(str)
  chars = str.downcase.chars
  chars[0].upcase!
  1.upto(chars.size - 1) { |i| chars[i].upcase! if chars[i - 1] == ' ' }
  chars.join
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
