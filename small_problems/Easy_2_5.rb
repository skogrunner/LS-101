# Easy 2 - problem 5 - Greeting a user
# Create a program that asks for a user's name.
# The program will then greet the user, OR
# if the user's name ends with !, the program will yell at the user.
# (yell means ALL CAPS)

# get user name
yell = false
puts 'What is your name?'
name = gets.chomp

# name validation. Which greeting will be used?
if name[-1] == '!'
  yell = true
  name.chop!
end

name = 'anonymous' if name.empty?

# greet user
if yell
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
