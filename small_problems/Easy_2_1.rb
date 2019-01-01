# Easy 2 - problem 1 - How old is Teddy?
# Create a program that randomly generates and prints Teddy's age.
# Teddy's age should be a random number between 20 and 200.

puts "Teddy is #{rand(20..200)} years old!"

# modify program to ask for a name, and then generate and print age.
# 'Teddy' is the default if no name is provided.

puts 'Please provide a name:'
name = gets.chomp

puts "#{name.empty? ? 'Teddy' : name} is #{rand(20..200)} years old!"
