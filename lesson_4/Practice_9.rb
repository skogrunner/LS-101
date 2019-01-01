statement = "the flintstones rock!!"

puts (statement.split.map { |word| word.capitalize }.join(' '))