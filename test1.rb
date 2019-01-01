produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash_fruit)
  new_hash = {}
  for fruit in hash_fruit.keys
    if hash_fruit[fruit] == 'Fruit'
      new_hash[fruit] = hash_fruit[fruit]
    end
  end
end

puts select_fruit(produce)