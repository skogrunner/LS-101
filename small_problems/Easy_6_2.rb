# Easy 6 - problem 2 - Delete vowels
# Create a method that takes an array of strings.
# Return an array of the same string values, with all vowels (aeiou) removed.

def remove_vowels(str_array)
  str_array.map { |str| str.delete('aeiouAEIOU') }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
