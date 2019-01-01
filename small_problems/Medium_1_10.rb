# Medium 1 - problem 10 - Fibonacci Numbers (Last Digit)
# Create a method that takes one argument, an Integer n
# Calculate the nth Fibonacci Number
# Return the last digit of the nth Fibonacci Number  
#
# fibonacci(1) = 1
# fibonacci(2) = 1
# fibonacci(3) = fibonacci(2) + fibonacci(1)
# In general, fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2)

def fibonacci_last(n)
  a, b = 0, 1
  (n - 1).times { a, b = b, (a + b) % 10 }
  b  
end

puts fibonacci_last(15) == 0        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20) == 5        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100) == 5       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001) == 1   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) == 4 # -> 4

# really fast solution!!
# uses repeating sequence of Fibonacci Series last digit
# sequence is 60 numbers long before repeating

def fibonacci_last_fast(n)
  last_digits = []
  last_digits[0..1] = [0, 1]
  2.upto(59) { last_digits << (last_digits[-2] + last_digits[-1]) % 10 }
  last_digits[n % 60] 
end

puts fibonacci_last_fast(15) == 0        
puts fibonacci_last_fast(20) == 5        
puts fibonacci_last_fast(100) == 5       
puts fibonacci_last_fast(100_001) == 1   
puts fibonacci_last_fast(1_000_007) == 3 
puts fibonacci_last_fast(123456789) == 4
