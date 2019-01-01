arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

def sort_reverse(arr)
  arr.map do |subarr|
    subarr.sort { |a, b| b <=> a }
  end
end

p sort_reverse(arr)
