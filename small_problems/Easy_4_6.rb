# Easy 4 - problem 6 - Running Totals
# Create a method that takes an Array of numbers
# It should return an Array with the same number of elements.
# Each element has the running total from the original Array.

def running_total(num_arr)
  total = 0
  num_arr.map { |num| total += num }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# Create same method using Array#reduce

def running_total(num_arr)
  running_array = num_arr.reduce([0]) { |arr, num| arr.push(arr.last + num) }
  running_array.delete_at(0)
  running_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
