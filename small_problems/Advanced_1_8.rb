# Advanced 1 - problem 8 - Merge Sort

def merge(arr1, arr2)
  return arr1 if arr2.nil?
  ndx2 = 0
  new_arr = []
  arr1.each do |val|
    while ndx2 < arr2.size && arr2[ndx2] < val
      new_arr << arr2[ndx2]
      ndx2 += 1
    end
    new_arr << val
  end
  new_arr.concat(arr2[ndx2..-1])
  new_arr
end

def merge_sort(arr)
  return arr if arr.size < 2
  merge(merge_sort(arr[0...arr.size / 2]), merge_sort(arr[arr.size / 2..-1]))
end

puts merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
puts merge_sort([5, 3]) == [3, 5]
puts merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
puts merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# non-recursive version

def merge_sort_norecurse(arr)
  new_arr = arr.map { |val| [val] }
  while new_arr.size > 1
    new_arr = (0...(new_arr.size + 1) / 2).map do |i|
      merge(new_arr[2 * i], new_arr[(2 * i) + 1])
    end
  end
  new_arr.flatten
end

puts merge_sort_norecurse([9, 5, 7, 1]) == [1, 5, 7, 9]
puts merge_sort_norecurse([5, 3]) == [3, 5]
puts merge_sort_norecurse([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
puts merge_sort_norecurse(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts merge_sort_norecurse([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

