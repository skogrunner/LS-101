# Easy 3 - problem 1 - Searching 101
# Create a program that asks for six numbers
# Display a message that states whether or not sixth number also appears in
#   the first 5 numbers.

# user entry and verification
num_arr = []
ordinal = %w[1st 2nd 3rd 4th 5th last]
6.times do |i|
  loop do
    puts "Enter the #{ordinal[i]} number:"
    num = gets.chomp
    if num == num.to_i.to_s
      num_arr[i] = num.to_i
      break
    end
    puts 'Invalid input'
  end
end

# display message
last = num_arr.pop
text = num_arr.include?(last) ? 'appears' : 'does not appear'
puts "The number #{last} #{text} in #{num_arr}."
