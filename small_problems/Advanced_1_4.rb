# Advanced 1 - problem 4 - Transpose MxN
# Create a method that takes a matrix of any size as the sole argument.
# Return s separate matrix that is the transposed version
#   of the original matrix.

def transpose(matrix)
  (0...matrix[0].size).map do |ndx|
    matrix.map { |sub| sub[ndx] }
  end
end

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]
