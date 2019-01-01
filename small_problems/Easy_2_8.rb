# Easy 2 - problem 8 - Sum or Product of Consecutive Integers
# Create a program that asks for an integer greater than 0, and asks whether
# all number between 1 and the integer should be summed or multiplied.

# user entry and verification
num = 0
loop do
  puts 'Please enter an integer greater than 0:'
  num = Integer(gets) rescue 0
  break if num > 0
  puts 'Invalid input'
end

choice = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  break if %w[s p].include?(choice)
  puts 'Invalid input'
end

# calculate and display answer
case choice
when 's'
  answer = (1..num).reduce(:+)
  puts "The sum of the integers between 1 and #{num} is #{answer}."
when 'p'
  answer = (1..num).reduce(:*)
  puts "The product of the integers between 1 and #{num} is #{answer}."
else
  puts "Whoops!! Something is wrong. Choice #{choice} is invalid."
end
