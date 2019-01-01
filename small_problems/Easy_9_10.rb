# Easy 9 - problem 10 - Grocery List
# Create a method that takes a grocery list Array as the sole argument.
# A grocery list consists of some number of pairs, each pair consisting
#   of a type of fruit (string) and a quantity (integer)
# Return an Array with the correct number of each fruit on the grocery list.

def buy_fruit(grocery_list)
  grocery_list.each_with_object([]) do |item, fruits|
    item.last.times { fruits << item.first }
  end
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
