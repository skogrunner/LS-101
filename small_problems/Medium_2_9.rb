# Medium 2 - problem 9 - Bubble Sort
# Create a method that takes an Array as an argument
# Return the same array, sorted, using a bubble sort algorithm.

# This method includes a minor efficiency, to keep track of the
#   highest swap index for each pass. When the highest swap index
#   becomes 0, the sort terminates.

def bubble_sort!(arr)
  last_swap = arr.size - 1
  until last_swap.zero?
    upper_bound = last_swap
    last_swap = 0
    (1..upper_bound).each do |i|
      if arr[i - 1] > arr[i]
        last_swap = i - 1
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
      end
    end
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
