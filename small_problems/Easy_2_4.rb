# Easy 2 - problem 4 - When will I Retire?
# Create a program that displays:
#  1. the year in which a user will retire
#  2. how many years the user must work until retirement

# initialization
CURR_YEAR = Time.now.year
age = 0
retire_age = 0

# request and validate input
loop do
  puts 'What is your age?'
  age = Integer(gets) rescue nil
  break unless age.nil? || age <= 0
  puts 'Invalid input. Please try again'
end
loop do
  puts 'At what age would you like to retire?'
  retire_age = Integer(gets) rescue nil
  break unless retire_age.nil? || retire_age < age
  puts 'Invalid input. Please try again'
end

# display the bad news!
years_remain = retire_age - age
puts "It's #{CURR_YEAR}. You will retire in #{CURR_YEAR + years_remain}."
puts "You have only #{years_remain} years of work to go!"
