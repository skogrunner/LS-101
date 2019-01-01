# Easy 6 - problem 1 - Cute angles
# Create a method that takes a floating point number that represents an angle
#   of any positive or negative (or zero) number.
# Return a String that represents the angle in degrees, minutes, and seconds.
# A degree has 60 minutes, and a minute has 60 seconds.

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
DEGREE = "\xC2\xB0"

def dms(angle)
  return nil unless angle.is_a?(Numeric)
  seconds = angle * SECONDS_PER_DEGREE
  degrees, remainder = seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remainder.divmod(SECONDS_PER_MINUTE)
  seconds = seconds.to_i
  # adjust for rounding to 60
  if seconds == 60
    minutes += 1
    seconds = 0
    if minutes == 60
      degrees += 1
      minutes = 0
    end
  end
  # adjust for negative degrees and the quirkiness of divmod in Ruby
  if degrees < 0
    if seconds > 0
      seconds -= SECONDS_PER_MINUTE
      minutes += 1
    end
    if minutes > 0
      minutes -= MINUTES_PER_DEGREE
      degrees += 1
    end
  end
  
  format("%d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(-76.73)
