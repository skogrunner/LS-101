flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index { |name| name.start_with?('Be') }