# Easy 1 - problem 7 - Stringy Strings
# Write a method that takes one argument, a positive integer.
# It returns a string of alternating '1's and '0's, of the argument length.

def stringy(num)
  return '' unless num.is_a?(Integer) && num > 0
  ('10' * (num / 2)) + ('1' * (num % 2))
end

def stringy(num, bit = 1)
  return '' unless num.is_a?(Integer) && num > 0 && [0, 1].include?(bit)
  stringy = []
  num.times do |i|
    number = i.even? ? bit : (bit + 1) % 2
    stringy << number
  end
  stringy.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
puts stringy(7, 1) == '1010101'
puts stringy(9, -1) == ''
puts stringy(0, 0) == ''
puts stringy('help', 0) == ''
