# calculator.rb
#
# This program acts as a simple calculator. It asks for two numbers as input.
# It then asks for an operation to be selected, which can be
#   add, subtract, multiply, divide.
# Finally, it displays the calculation of number 1 - operator - number 2.
# It maintains a loop until the user indicates that there are no more
#   calculations desired.

OPERATIONS = { '1' => '+', '2' => '-', '3' => '*', '4' => '/' }

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_f != 0 || num == '0'
end

def read_number(message)
  number = 0
  loop do
    prompt(message)
    number = gets.chomp
    break if valid_number?(number)
    prompt 'Oops. This number does not look correct. Try again'
  end
  number.include?('.') ? number.to_f : number.to_i
end

def read_operator
  message = <<-MSG
  Please enter an operation (1, 2, 3, 4). Valid operations are:
    1 - addition
    2 - subtraction
    3 - multiplication
    4 - division
  MSG
  operation = ''
  until %w(1 2 3 4).include?(operation)
    prompt(message)
    operation = gets.chomp
  end
  operation
end

prompt 'Who might you be, friend?'
name = gets.chomp
name = 'Anonymous' if name.empty?
prompt "Welcome to Your Calculator, #{name}!!"

loop do
  num1 = read_number('Enter the first number')
  num2 = read_number('Enter the second number')

  operator = read_operator

  result = case operator
           when '1' then num1 + num2
           when '2' then num1 - num2
           when '3' then num1 * num2
           when '4' then num1.fdiv(num2)
           end

  prompt "Calculating #{num1} #{OPERATIONS[operator]} #{num2}"
  prompt "The result is #{result}"

  prompt 'Do you wish to do another calculation? Enter Y or N'
  next if gets.chomp.downcase == 'y'
  break
end

prompt "Thank you for using Your Calculator, #{name}."
prompt 'Goodbye!!'
