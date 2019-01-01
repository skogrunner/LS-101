# Easy 5 - problem 3 - After Midnight (Part 2)
# Create two methods that take a time of day in 24 hour format.
# Return the number of minutes before and after midnight, one per method.
# Both methods should return values in the range of 0..1439
# Do not use the Date or Time classes of Ruby.

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  (MINUTES_PER_DAY - after_midnight(time)) % MINUTES_PER_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

# with Date and Time classes

MIDNIGHT_BEFORE = Time.new(2018, 10, 30, 0, 0).freeze
MIDNIGHT_AFTER = Time.new(2018, 10, 31, 0, 0).freeze
SECONDS_PER_MINUTE = 60

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  time = Time.new(2018, 10, 30, hours, minutes)
  (((time - MIDNIGHT_BEFORE) / SECONDS_PER_MINUTE) % MINUTES_PER_DAY).to_i
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  time = Time.new(2018, 10, 30, hours, minutes)
  (((MIDNIGHT_AFTER - time) / SECONDS_PER_MINUTE) % MINUTES_PER_DAY).to_i
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
