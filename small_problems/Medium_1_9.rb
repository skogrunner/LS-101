# Medium 1 - problem 9 - Fibonacci Numbers (Procedural)
# Create a method that takes one argument, an Integer n
# It procedurally computes the nth Fibonacci Number
#
# fibonacci(1) = 1
# fibonacci(2) = 1
# fibonacci(3) = fibonacci(2) + fibonacci(1)
# In general, fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2)

def fibonacci(n)
  a, b = 0, 1
  (n - 1).times { a, b = b, a + b}
  b
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts fibonacci(100)
puts fibonacci(100_001)
