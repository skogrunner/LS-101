# Easy 7 - problem 5 - Staggered Caps (Part 1)
# Create a method that takes a String argument.
# Return a new string with a staggered capitalization scheme.
#   (i.e. CAP nocap CAP nocap  etc)
# Characters that are not letters should not be modified but still count
#   as characters when switching between upper and lower case.

def staggered_case(str)
  str.chars.map.with_index { |ch, i| i.even? ? ch.upcase : ch.downcase }.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# add optional argument for case of first char. Default is upper case.

def staggered_case(str, uppercase = true)
  toggle_case_arg = uppercase ? 0 : 1
  stagger_chars = str.chars.map.with_index do |ch, i|
    (i + toggle_case_arg).even? ? ch.upcase : ch.downcase
  end
  stagger_chars.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!'
puts staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
