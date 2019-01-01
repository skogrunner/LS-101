# Advanced 1 - problem 6 - Fix the Bug
# Find and fix the bug in the method below

def my_method(array)
  if array.empty?
    []
#  elsif  this is bad code
  elsif array.size > 1 # this is the corrected code 
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
