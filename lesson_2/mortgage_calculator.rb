# mortgage_calculator.rb
#
# This program serves as a calculator for mortgage or auto loan
#   monthly payment. Inputs are:
#   1) loan amount, in dollars/cents
#   2) annual percentage rate (APR), which is a percentage
#   3) loan duration, in years and months

# Divide the APR by 1200 to get the monthly interest rate as a decimal number.
# Multiply loan duration years by 12, and add in loan months, if any, to get
#   the loan duration in months.

# The formula for calculating the monthly payment is:
#   m = p * (j / (1 - (1 + j)**(-n)))
#   where m is monthly payment, p is loan amount, j is monthly interest rate,
#   n is loan duration in months.

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def display_blank_line
  puts
end

def display_asterisks
  puts '*' * 80
end

def prompt(message)
  puts "=> #{message}"
end

def valid_float?(num)
  num.to_s.match?(/^[-+]?[0-9]*\.?[0-9]+$/)
end

def valid_integer?(num)
  num.to_s.match?(/^[-+]?[0-9]+$/)
end

def read_loan_amount
  amt = nil
  amt_input = ''
  loop do
    prompt(MESSAGES['ask_loan_amount'])
    amt_input = gets.chomp.delete('+')
    amt = amt_input.delete('$,') # delete dollar sign and commas
    break if valid_float?(amt) && amt[0] != '-' # must not be negative
    prompt(MESSAGES['error_loan_amount'])
  end
  [amt.to_f, amt_input]
end

def read_apr
  # apr is percentage, not decimal number
  # for example, an apr of 12.5% is equivalent to .125 decimal number
  apr = nil
  loop do
    prompt(MESSAGES['ask_apr'])
    apr = gets.chomp.delete('%+') # remove percentage symbol from input
    unless valid_float?(apr) && apr[0] != '-' # must not be negative
      prompt(MESSAGES['error_apr'])
      next
    end
    # if apr less than 1 and non-zero, ask if correct
    break unless apr.to_f < 1 && apr.to_f != 0 && redo_apr?
  end
  [apr.to_f, apr]
end

def read_years
  years = nil
  loop do
    prompt(MESSAGES['ask_duration_years'])
    years = gets.chomp
    break if valid_integer?(years) && years[0] != '-' # valid years non-negative
    prompt(MESSAGES['error_duration_years'])
  end
  years.to_i
end

def read_months
  months = nil
  loop do
    prompt(MESSAGES['ask_duration_months'])
    months = gets.chomp
    break if months.match?(/^([0-9]|(10)|(11))$/) # valid months from 0 to 11
    prompt(MESSAGES['error_duration_months'])
  end
  months.to_i
end

def read_loan_duration
  # years and months are entered separately, for example 3 years and 6 months,
  # or 30 years and 0 months.
  display_blank_line
  prompt(MESSAGES['explain_duration'])
  display_blank_line
  loop do
    years = read_years
    months = read_months
    return [years, months] if years > 0 || months > 0 # duration must be > 0
    prompt(MESSAGES['error_loan_duration'])
  end
end

def more_calcs?
  prompt(MESSAGES['redo_calc'])
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

def redo_apr?
  display_blank_line
  prompt(MESSAGES['warning_apr'])
  display_blank_line
  prompt(MESSAGES['redo_apr'])
  answer = gets.chomp.downcase
  !answer.start_with?('n')
end

prompt(MESSAGES['greeting'])
display_blank_line
prompt(MESSAGES['explain_general'])
display_blank_line

loop do
  p, p_text = read_loan_amount # p is loan_amount
  display_blank_line
  apr, apr_text = read_apr
  years, months = read_loan_duration

  j = apr.fdiv(1200) # j is monthly interest rate, expressed as a decimal float
  n = years * 12 + months # n is loan duration in months
  monthly_payment = if j == 0
                      p / n
                    else
                      p * (j / (1 - (1 + j)**-n))
                    end

  display_blank_line
  display_asterisks
  year_text = years == 1 ? 'year' : 'years'
  month_text = months == 1 ? 'month' : 'months'
  dollar_text = p_text[0] == '$' ? '$' : ''
  prompt("For a loan of #{p_text} with an APR of #{apr_text}% " \
    "and a duration of #{years} #{year_text} and #{months} #{month_text},")
  prompt(format('the monthly payment will be %<dollar>s%<payment>.2f',
                dollar: dollar_text, payment: monthly_payment))
  display_asterisks
  display_blank_line

  break unless more_calcs?
end

prompt(MESSAGES['goodbye'])
