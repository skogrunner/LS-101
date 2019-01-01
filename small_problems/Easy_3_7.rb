# Easy 3 - problem 7 - Odd Lists
# Create a method that takes an Array as an argument.
# It returns an array consisting of every other element in the argument array.
# For example, the 1st 3rd 5th and so on elements are in the return array.

def oddities(arr)
  result_arr = []
  0.step(arr.length - 1, 2) { |i| result_arr << arr[i] }
  result_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# Create another method that returns an array of the 2nd, 4th, 6th etc elements
# Be original! Do not use the same logic as above.

def evenities(arr)
  arr.select.with_index { |_item, index| index.odd? }
end

puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities(['abc', 'def']) == ['def']
puts evenities([123]) == []
puts evenities([]) == []
