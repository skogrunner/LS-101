# Easy 5 - problem 10 - Bannerizer
# Create a method that takes a short line of text, and
#   prints it within a box.

def print_line(num)
  puts "+#{'-' * (num + 2)}+"
end

def print_side(num)
  puts "|#{' ' * (num + 2)}|"
end

def print_text(str, num)
  puts "| #{str}#{' ' * (num - str.size)} |"
end

def print_in_box(str)
  print_line(str.length)
  print_side(str.length)
  print_text(str, str.length)
  print_side(str.length)
  print_line(str.length)
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')

# Modify print_in_box to accept long strings.
# Word wrap if string is too long for a standard terminal (> 76 characters)

MAX_LINE = 76 # terminal size is 80, subtract 4 for the box border

def print_in_box_wrap(str)
  line = ''
  lines = []
  # build lines using word wrap
  str.split.each do |word|
    if line.size + word.size > MAX_LINE
      line.strip
      lines << line
      line = ''
    end
    line += (word + ' ')
  end
  # final iteration
  line.strip
  lines << line
  # time to print!
  max_length = lines.map(&:size).max
  print_line(max_length)
  print_side(max_length)
  lines.each { |text| print_text(text, max_length) }
  print_side(max_length)
  print_line(max_length)
end

long_str = 'Well here we are! This is a fine pickle. Why did I ever agree to come here?'\
           ' It could have something to do with that crazy fox I was hanging around with. '\
           'Absolutely crazy, I say. And you know what? I loved every minute!!'
           
print_in_box_wrap(long_str)
