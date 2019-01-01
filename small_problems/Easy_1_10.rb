# Easy 1 - problem 10 - What's my Bonus?
# Write a method that takes two arguments, a positive integer (salary)
#   and a boolean.
# It calculates and returns the bonus for a salary.
# If the boolean is true, the bonus should be salary / 2. Else it should be 0.

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
