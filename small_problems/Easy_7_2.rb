# Easy 7 - problem 2 - Lettercase Counter
# Create a method that takes a String.
# Return a hash with three entries:
#   1. the number of chars that are lowercase.
#   2. the number of chars that are uppercase.
#   3. the number of chars that are neither.

def letter_case_count(str)
  counts = { lowercase: 0,
             uppercase: 0,
             neither: 0 }
  str.chars.each do |ch|
    case ch.ord
    when 97..122 then
      counts[:lowercase] += 1
    when 65..90  then
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
