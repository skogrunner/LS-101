# Medium 1 - problem 8 - Fibonacci Numbers (Recursion)
# Create a method that takes one argument, an Integer n
# It recursively computes the nth Fibonacci Number
#
# fibonacci(1) = 1
# fibonacci(2) = 1
# fibonacci(3) = fibonacci(2) + fibonacci(1)
# In general, fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2)

def fibonacci(n)
  return 1 if n < 3
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
