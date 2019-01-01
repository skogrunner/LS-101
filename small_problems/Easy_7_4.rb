# Easy 7 - problem 4 - Swap Case
# Create a method that takes a String argument.
# Return a new string where every uppercase letter is replaced by its
#   lowercase counterpart, and every lowercase letter by its uppercase
#   counterpart. Non-alpha characters should not change.
# Do not use String#swapcase

def swapcase(str)
  chars = str.chars
  chars.each do |ch|
    case ch
    when ('a'..'z')
      ch.upcase!
    when ('A'..'Z')
      ch.downcase!
    end
  end
  chars.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
