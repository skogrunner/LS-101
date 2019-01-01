# Easy 8 - problem 2 - Madlibs
# Create a simple madlib program that prompts for a noun, a verb, an adverb,
#   and an adjective, and displays a sentence using these prompts.

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"