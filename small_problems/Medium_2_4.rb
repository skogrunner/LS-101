# Medium 2 - problem 4 - Matching Parentheses?
# Create a method that takes a string as the sole argument.
# Return true is all parentheses in the string are properly balanced.
# Otherwise return false.
# To be properly balanced, parentheses must occur
#   in matching '(' and ')' pairs.

# method generalized to handle not only parentheses, but also
#   square braces and curly braces. In addition, method
#   checks for single and double quotation marks. Anything
#   inside quotation marks is considered to be text and does
#   not participate in the balancing check.
#
# method checks each closing paren/brace to verify that there is
#   a matching opening paren/brace of the same type
# method checks at the end to ensure that all opening
#   parens/braces/quotes have a closing companion (none are left hanging).

def balanced?(str)
  stack = []
  single = false
  double = false
  str.each_char do |ch|
    if single
      single = false if ch == "'"
      next
    elsif double
      double = false if ch == '"'
      next
    end
    case ch
    when "'" then single = true
    when '"' then double = true
    when '(', '[', '{' then stack.push(ch)
    when ')' then return false if stack.empty? || stack.pop != '('
    when ']' then return false if stack.empty? || stack.pop != '['
    when '}' then return false if stack.empty? || stack.pop != '{'
    end
  end
  stack.empty? && !single && !double
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
puts balanced?('What [is] this?') == true
puts balanced?('What is} this?') == false
puts balanced?('What [is this?') == false
puts balanced?('{{What} {is this}}?') == true
puts balanced?('[[What]] {[[is this]}?') == false
puts balanced?('[(Hey!])') == false
puts balanced?('")Hey!("') == true
