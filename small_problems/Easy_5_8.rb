# Easy 5 - problem 8 - Alphabetical Numbers
# Create a method that takes an Array of Integers between 0 and 19
# Return an Array of those Integers sorted by their English names

NUMBERS = %w[zero one two three four five six seven eight nine ten eleven
             twelve thirteen fourteen fifteen sixteen seventeen eighteen
             nineteen].freeze

def alphabetic_number_sort(arr)
  arr.sort_by { |num| NUMBERS[num] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# using Enumerable#sort

def alphabetic_number_sort(arr)
  arr.sort { |a, b| NUMBERS[a] <=> NUMBERS[b] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
