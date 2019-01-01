# Easy 1 - problem 4 - How Many?
# Write a method that counts the number of occurrences
#   of each element in a given array.
# Method then primts each element with its number of occurrences

def count_occurrences(arr)
  counts = Hash.new(0)
  arr.each { |item| counts[item] += 1 }
  counts.each { |key, val| puts "#{key} => #{val}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
