# Easy 9 - problem 2 - Double Doubles
# Create a method that takes a number as the only argument.
# Return the number multiplied by two, unless it is a double number.
# If it is a double number, just return the original number.
# A double number is a positive integer with an even number of digits and
#   the leftside digits are identical to the right side digits (i.e. 437437)

def double?(num)
  return false unless num.is_a?(Integer) && num > 0
  str_num = num.to_s
  str_num.size.even? &&
    str_num[0, str_num.size / 2] == str_num[(str_num.size / 2)..-1]
end

def twice(num)
  double?(num) ? num : num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
