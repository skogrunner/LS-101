# Easy 3 - problem 3 - Counting the Number of Characters
# Create a program that asks for a string of one or more words.
# Display the number of characters in the string, not including spaces.

# get input
puts 'Please write word or multiple words:'
words = gets.chomp

# display character count
characters = words.delete(' ').size
puts "There are #{characters} characters in \"#{words}\"."
