# Easy 8 - problem 5 - Palindromic Substrings
# Create a method that takes a String as the only argument.
# Return a list of all palindromic substrings.
# Order from starting position in the original string,
#   then shortest to longest.
# A palindromic substring must be greater than one character in length.
# Case matters!!!

# this method (substrings_at_start) returns all substrings starting at
#   position 0, from shortest to longest
def substrings_at_start(str)
  (1..str.size).map { |i| str[0, i] }
end

# this method (substrings) returns all possible substrings
def substrings(str)
  (0...str.size).map { |i| substrings_at_start(str[i..-1]) }.flatten
end

def palindromes(str)
  substrings(str).select { |sub| sub == sub.reverse && sub.size > 1 }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# variation ignoring case and non-alphanumeric characters

def palindrome?(str)
  str == str.reverse && str.size > 1
end

def loose_palindromes(str)
  palindromes = []
  substrings(str).each do |substr|
    palindromes << substr if palindrome?(substr.downcase.delete('^0-9a-z'))
  end
  palindromes
end

puts loose_palindromes("Madam, I'm Adam!")
