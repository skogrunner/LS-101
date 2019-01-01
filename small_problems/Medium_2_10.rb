# Medium 2 - problem 10 - Sum Square - Square Sum
# Create a method that takes a positive integer n as the sole argument.
# Return the difference between the square of the sum of 1..n
#   and the sum of the squares of 1..n

def sum_square_difference(n)
  sum = 0
  sq_sum = 0
  1.upto(n) do |i|
    sum += i
    sq_sum += i**2
  end
  sum**2 - sq_sum
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
