# Easy 5 - problem 2 - After Midnight (Part 1)
# Create a method that takes an Integer as the only argument.
# The integer represents the number of minutes after or before midnight.
# Return the time of day in 24 hour format (hh:mm).
# Do not use the Date or Time classes of Ruby.

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(int)
  minutes = int % MINUTES_PER_DAY
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# with allowance for Date and Time classes, and including Day of Week

SECONDS_PER_MINUTE = 60

def time_day_of_week(int)
  time = Time.new(2018, 10, 28, 0, 0) # Sunday midnight
  time += int * SECONDS_PER_MINUTE # int is in minutes, time math in seconds
  time.strftime('%A %H:%M')
end

puts time_day_of_week(-4231) == "Thursday 01:29"
