# Medium 1 - problem 6 - Stack Machine Interpretation
# Create a method that takes a String of program language
#   instructions. The string is composed of words delimited by
#   spaces. Each word is an instruction.
#
# Maintain a stack and a register. The register is initialized to zero,
#   and will always contain the current value. The stack is last in,
#   first out. It will be an Array, using push and pop.
#
# The method must support the following commands:
# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value onto the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing
#   the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value,
#   storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value,
#   storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value,
#   storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value,
#   storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

def minilang(program_code)
  register = 0
  stack = []
  instructions = program_code.split
  instructions.each do |command|
    case command
    when 'PUSH'
      stack.push(register)
    when 'POP'
      return 'Empty stack' if stack.empty?
      register = stack.pop
    when 'PRINT'
      puts register
    when 'ADD'
      return 'Empty stack' if stack.empty?
      register += stack.pop
    when 'SUB'
      return 'Empty stack' if stack.empty?
      register -= stack.pop
    when 'MULT'
      return 'Empty stack' if stack.empty?
      register *= stack.pop
    when 'DIV'
      return 'Empty stack' if stack.empty?
      register /= stack.pop
    when 'MOD'
      return 'Empty stack' if stack.empty?
      register %= stack.pop
    else
      return 'Unknown command' if !command.match(/-?\d+\.?\d*/)
      register = command.to_f
    end
  end
  nil
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT SUB PUSH 3 ADD DIV PRINT')

def equation_processor(equation)
  tokens = []
  ndx = 0
  numbers = []
  operations = []
  commands = []
  equation = equation.delete(' ')
  while ndx < equation.size do
    if '()+*/%'.include?(equation[ndx])
      tokens << equation[ndx]
    elsif equation[ndx] == '-' && ndx > 0 &&
             ')0123456789'.include?(equation[ndx - 1])
      tokens << '-'
    else
      end_number = equation.index(%r{[()+/%*-]}, ndx + 1)
      if end_number
        tokens << equation[ndx...end_number].to_f
        ndx = end_number - 1
      else
        tokens << equation[ndx..-1].to_f
        ndx = equation.size
      end      
    end
    ndx += 1
  end
  p tokens
  tokens.each do |token|
    case token
    when '(', '*', '/', '%', '+', '-'
      operations.push(token)
    else
      if operations.empty?
        numbers.push(token.to_s)
      elsif '+-)'.include?(operations.last) || token == ')'
            while !operations.empty? && operations.last != '(' do
              hold = numbers.pop
              commands << numbers.pop
              commands << 'PUSH'
              commands << hold
              case operations.pop
              when '+' then commands << 'ADD'
              when '-' then commands << 'SUB'
              when '*' then commands << 'MULT'
              when '/' then commands << 'DIV'
              when '%' then commands << 'MOD'
              end
              commands << 'PUSH'
            end
            operations.pop if operations.last == '('
      else
        numbers.push(token.to_s)
      end       
    end
  end
  while !operations.empty? do
    hold = numbers.pop
    commands << numbers.pop
    commands << 'PUSH'
    commands << hold
    case operations.pop
    when '+' then commands << 'ADD'
    when '-' then commands << 'SUB'
    when '*' then commands << 'MULT'
    when '/' then commands << 'DIV'
    when '%' then commands << 'MOD'
    end
    commands << 'PUSH'
  end
  commands << 'PRINT'
  p commands
  minilang(commands.join(' '))
end

# puts equation_processor('(3 + (4 * 5) - 7) / (5 % 3)')