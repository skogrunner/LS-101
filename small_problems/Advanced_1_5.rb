# Advanced 1 - problem 5 - Rotating Matrices
# Create a method that takes a matrix of any size as the sole argument.
# Return s separate matrix rotated 90-degrees to the right.

def right_rotate90(matrix)
  (0...matrix[0].size).map do |ndx|
    matrix.reverse_each.map { |sub_array| sub_array[ndx] }
  end
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = right_rotate90(matrix1)
new_matrix2 = right_rotate90(matrix2)
new_matrix3 = right_rotate90(right_rotate90(right_rotate90(right_rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

def left_rotate90(matrix)
  (matrix[0].size - 1).downto(0).map do |ndx|
    matrix.map { |sub_array| sub_array[ndx] }
  end
end

new_matrix4 = left_rotate90(matrix1)
new_matrix5 = left_rotate90(matrix2)
new_matrix6 = left_rotate90(left_rotate90(left_rotate90(left_rotate90(matrix2))))

p new_matrix4 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p new_matrix5 == [[2, 8], [4, 0], [7, 1], [3, 5]]
p new_matrix6 == matrix2

def rotate(matrix, degrees = 90)
  case degrees % 360
  when 0 then matrix
  when 90 then right_rotate90(matrix)
  when 180 then right_rotate90(right_rotate90(matrix))
  when 270 then left_rotate90(matrix)
  end
end

p rotate(matrix1, 135) == nil
