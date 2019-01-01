# Easy 8 - problem 6 - fizzbuzz
# Create a method that takes two integers.
# The first integer is the starting integer, the second is the ending integer.
# Print all number between the two arguments (inclusive), with the following
#   exceptions:
# If the number is divisible by 3, print 'Fizz'
# If the number is divisible by 5, print 'Buzz'
# If the number is divisible by both 3 and 5, print 'FizzBuzz'

def fizzbuzz(start, ending)
  puts((start..ending).map do |i|
         if (i % 15).zero?
           'Fizzbuzz'
         elsif (i % 3).zero?
           'Fizz'
         elsif (i % 5).zero?
           'Buzz'
         else
           i
         end
       end.join(', '))
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
fizzbuzz(-7, 0)
fizzbuzz(16, 13)
