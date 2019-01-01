# Medium 2 - problem 3 - Lettercase Percentage Ratio
# Create a method that takes a string as the sole argument.
# Return a hash with three entries:
#   the percentage of chars that are lowercase letters
#   the percentage of chars that are uppercase letters
#   the percentage of chars that are neither

def letter_percentages(str)
  upper = (str.count('A-Z') / str.size.to_f) * 100
  lower = (str.count('a-z') / str.size.to_f) * 100
  { lowercase: lower, uppercase: upper, neither: 100 - lower - upper }
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
