arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  hash.map do |key, val|
    [key, val + 1]
  end.to_h
end

p new_arr
