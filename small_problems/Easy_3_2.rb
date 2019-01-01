# Easy 3 - problem 2 - Arithmetic Integer
# Create a program that asks for two positive integers.
# Display the results of the following operations:
#   addition
#   subtraction
#   product
#   quotient
#   remainder
#   power

# user entry and verification
x = 0
y = 0
loop do
  puts '==> Enter the first number:'
  x = Integer(gets) rescue 0
  break unless x <= 0
  puts 'Invalid input'
end

loop do
  puts '==> Enter the second number:'
  y = Integer(gets) rescue 0
  break unless y <= 0
  puts 'Invalid input'
end

# display arithmetic operations
puts "==> #{x} + #{y} = #{x + y}"
puts "==> #{x} - #{y} = #{x - y}"
puts "==> #{x} * #{y} = #{x * y}"
puts "==> #{x} / #{y} = #{x / y}"
puts "==> #{x} % #{y} = #{x % y}"
puts "==> #{x} ** #{y} = #{x**y}"

# float version of program

# user entry and verification
x = 0.0
y = 0.0
loop do
  puts '==> Enter the first number:'
  x = Float(gets) rescue 0
  break unless x <= 0
  puts 'Invalid input'
end

loop do
  puts '==> Enter the second number:'
  y = Float(gets) rescue 0
  break unless y <= 0
  puts 'Invalid input'
end

# display arithmetic operations
puts "==> #{x} + #{y} = #{x + y}"
puts "==> #{x} - #{y} = #{x - y}"
puts "==> #{x} * #{y} = #{x * y}"
puts "==> #{x} / #{y} = #{x / y}"
puts "==> #{x} % #{y} = #{x % y}"
puts "==> #{x} ** #{y} = #{x**y}"
