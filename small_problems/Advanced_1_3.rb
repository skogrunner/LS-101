# Advanced 1 - problem 3 - Transpose 3x3
# Create a method that takes a 3x3 matrix as the sole argument.
# Return s separate 3x3 matrix that is the transposed version
#   of the original matrix.

def transpose(matrix)
  new_matrix = Array.new(3) { Array.new(3) }
  (0..2).each do |i|
    (0..2).each do |j|
      new_matrix[i][j] = matrix[j][i]
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# now a method that transposes the given matrix in place, returning it.
# will handle any size of matrix

# row length and column length of the matrix must be the same

def transpose!(matrix)
  return nil if matrix.size != matrix[0].size
  (0...matrix.size - 1).each do |i|
    (i + 1...matrix.size).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end
  matrix
end

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == new_matrix
