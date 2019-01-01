require 'securerandom'

def uuid
  SecureRandom.hex(8) + '-' +
    SecureRandom.hex(4) + '-' +
    SecureRandom.hex(4) + '-' +
    SecureRandom.hex(4) + '-' +
    SecureRandom.hex(12)
end

puts uuid
puts uuid
puts uuid
