# Medium 2 - problem 8 - Next Featured Number Higher than a Given Value
# Create a method that takes a single integer as an argument.
# Return the next featured number that is greater than the argument.
# Print an error message if there is no such number.

# A featured number is:
#   1) a multiple of 7
#   2) odd
#   3)each digit occurs only once

def next_odd7(num)
  num += 7 - num % 7
  num.odd? ? num : num + 7
end

def featured(num)
  num = next_odd7(num)
  (num..9_876_543_201).step(14) { |n| return n if n.digits == n.digits.uniq }
  puts 'Error - the given number has no higher featured number'
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)
