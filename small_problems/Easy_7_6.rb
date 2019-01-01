# Easy 7 - problem 6 - Staggered Caps (Part 2)
# Create a method that takes a String argument.
# Return a new string with a staggered capitalization scheme.
#   (i.e. CAP nocap CAP nocap  etc)
# Characters that are not letters should not be modified and do NOT count
#   as characters when switching between upper and lower case.

def staggered_case(str)
  new_str = ''
  uppercase = true
  str.chars.each do |ch|
    if ch =~ /[a-zA-Z]/
      new_str << (uppercase ? ch.upcase : ch.downcase)
      uppercase = !uppercase
    else
      new_str << ch
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# alternate version takes an optional argument whether or not to include
#   nonletter chars in the case toggle

def staggered_case(str, include_all = false)
  new_str = ''
  uppercase = true
  str.chars.each do |ch|
    if ch =~ /[a-zA-Z]/
      new_str << (uppercase ? ch.upcase : ch.downcase)
      uppercase = !uppercase
    else
      new_str << ch
      uppercase = !uppercase if include_all
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', false) == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
