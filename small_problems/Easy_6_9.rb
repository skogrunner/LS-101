# Easy 6 - problem 9 - Does My List Include This?
# Create a method that takes an Array and a search value as arguments.
# Return true if search value is found in the Array, otherwise return false.
# Array#include? may not be used in the method.

def include?(arr, search_val)
  arr.each { |val| return true if val == search_val }
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false

#another (not quite as good) way

def include?(arr, search_val)
  arr.reduce(false) { |result, val| result || val == search_val }
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
