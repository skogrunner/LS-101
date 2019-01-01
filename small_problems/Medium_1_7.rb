# Medium 1 - problem 7 - Word to Digit
# Create a method that takes a sentence String as the sole argument.
# Return the same sentence string with the words 'zero' through 'nine', if any,
#   converted to their numeric characters (1 through 9)

NUMBERS = { 'zero'  => '0',
            'one'   => '1',
            'two'   => '2',
            'three' => '3',
            'four'  => '4',
            'five'  => '5',
            'six'   => '6',
            'seven' => '7',
            'eight' => '8',
            'nine'  => '9' }.freeze

def word_to_digit(sentence)
  sentence.gsub!(/(\d+)/, '\1~@') # marking numbers so spaces won't get deleted
  NUMBERS.each_key do |key|
    sentence.gsub!(/\b#{key}\b/i, NUMBERS[key])
  end
  sentence.gsub!(/(?<=\d) (?=\d)/, '')
  sentence.gsub!('~@', '') # removing markers on numbers
  sentence.gsub!(/\b(\d{3})(\d{3})(\d{4})\b/, '(\1) \2-\3')
  sentence
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.')
puts word_to_digit("Hi! I'm four?? and a half two!you.")
puts word_to_digit('2 4 6 8 Who do we appreci!eight?')
puts word_to_digit('TWO Four siX EIGHT Who do we appreci!eiGht?')
puts word_to_digit('My number is 4157869583')
puts word_to_digit('My other number is 295748593849')
