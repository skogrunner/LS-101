vals = [2, 9, 4, 36, 0, -17]

def multiply(numbers, multiplier)
  new_vals = []
  count = 0
  while count < numbers.size
    new_vals << numbers[count] * multiplier
    count += 1
  end
  new_vals
end

p multiply(vals, 16)