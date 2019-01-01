# Easy 9 - problem 1 - Welcome Stranger
# Create a method that takes two arguments, an array and a hash.
# The array will contain two or more elements that are components
#   of a persons full name (for example, first name, middle initial, last name)
# The hash will contain two keys, :title and :occupation
# Return a greeting that uses the person's full name, title and occupation.

def greetings(name, job_class)
  "Hello, #{name.join(' ')}! Nice to have a "\
  "#{job_class[:title]} #{job_class[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
puts greetings(['Gary', 'de', 'la', 'Cruz'], { title: 'Rookie', occupation: 'Gardener Trainee' })
