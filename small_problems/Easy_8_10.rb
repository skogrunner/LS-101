# Easy 8 - problem 10 - Get The Middle Character
# Create a method that takes a non-empty String as the only argument.
# Return the middle character or characters (depending on whether
#   argument has even or odd length)

def center_of(str)
  return '' if str.empty?
  str.size.odd? ? str[str.size / 2] : str[(str.size - 1) / 2, 2]
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
