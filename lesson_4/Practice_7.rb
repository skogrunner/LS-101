statement = "The Flintstones Rock!!"

char_count = {}

statement.chars.each do |ch|
  char_count[ch] = statement.count(ch) unless char_count.key?(ch)
end

p char_count