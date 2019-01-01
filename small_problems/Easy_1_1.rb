# Easy 1 - problem 1 - Repeat Yourself
# write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates

def repeat(phrase, iterations)
  return nil unless iterations.is_a? Integer
  iterations.times { puts phrase }
end

repeat('Hello', 3)

repeat('I love orienteering!', 5)
