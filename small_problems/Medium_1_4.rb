# Medium 1 - problem 4 - 1000 Lights
# Create a method that takes a non-negative Integer n as the sole argument.
# Assume that there are a bank of lights numbered 1 to n.
# Make n number of passes. For each pass turn a light on/off if it is a
#   multiple of the pass number (1 .. n).

# Example:  n = 3
# After pass 1 - light 1 = on, light 2 = on, light 3 = on
# After pass 2 - light 1 = on, light 2 = off, light 3 = on
# After pass 3 - light 1 = on, light 2 = off, light 3 = off

# Return an Array of the light numbers that are on after pass n.
# In the example, return an Array [1] (only light 1 is on)

# Note - this problem is functionally equivalent to returning an Array of
#   all square numbers less than or equal to n
# Proof of assertion - any number that is a multiple will be the product of two
#   numbers. One turns on the light and the other turns it off. The only
#   exception is a square, which is the product of two identical numbers, so
#   the light get turned on, but does not get turned off again.

def lights(n)
  (1..Math.sqrt(n + 0.1)).map { |i| i**2 }
end

puts lights(2) == [1]
puts lights(10) == [1, 4, 9]
puts lights(100) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

# alternate solution

def lights1(n)
  lights = Array.new(n + 1, true) # init all lights to true, to handle round 1
  lights[0] = false # light 0 is not being used (does not exist)
  (2..n).each do |round|
    round.step(n, round) do |multiple|
      lights[multiple] = !lights[multiple]
    end
  end
  lights.each_index.select { |i| lights[i] }
end

puts lights1(2) == [1]
puts lights1(10) == [1, 4, 9]
puts lights1(100) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
p lights1(1000)
