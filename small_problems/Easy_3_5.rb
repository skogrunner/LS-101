# Easy 3 - problem 5 - Squaring an Argument
# Create a method that computes the square of its argument,
# using the 'multiply' method from problem 3.4 (Multiplying Two Numbers)

def multiply(input1, input2)
  input1 * input2
end

def square(number)
  return nil unless number.is_a?(Numeric)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64

# expand square to return a number to any power

def power(number, power)
  result = 1
  power.times { result = multiply(result, number) }
  result
end

puts power(3,6)
puts power(4,1)
puts power(-26,0)
puts power(2,17)
