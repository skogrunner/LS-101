# Easy 2 - problem 3 - Tip calculator
# Create a simple tip calculator that prompts for a bill amount and a tip rate.
# The program computes the tip and then diplays both tip and bill total amount.

# initialization
bill = 0.0
tip_pct = 0.0

# request and validate input
loop do
  puts 'What is the bill?'
  bill = Float(gets).round(2) rescue nil
  break unless bill.nil? || bill < 0
  puts 'Invalid input. Please try again'
end
loop do
  puts 'What is the tip percentage?'
  tip_pct = Float(gets) rescue nil
  break unless tip_pct.nil? || tip_pct < 0
  puts 'Invalid input. Please try again'
end

# display tip and bill total
tip = (bill * (tip_pct / 100.0)).round(2)
puts "The tip is $#{tip}"
puts "The total is $#{(bill + tip).round(2)}"

# modify program to print out 2 decimal places in all cases

# initialization
bill = 0.0
tip_pct = 0.0

# request and validate input
loop do
  puts 'What is the bill?'
  bill = Float(gets).round(2) rescue nil
  break unless bill.nil? || bill < 0
  puts 'Invalid input. Please try again'
end
loop do
  puts 'What is the tip percentage?'
  tip_pct = Float(gets) rescue nil
  break unless tip_pct.nil? || tip_pct < 0
  puts 'Invalid input. Please try again'
end

# display tip and bill total
tip = (bill * (tip_pct / 100.0))
total = bill + tip
puts format('The tip is $%.2f', tip)
puts format('The total is $%.2f', total)
