# Medium 2 - problem 2 - Now I Know My ABCs
# Create a method that reads a word as the sole argument.
# There will be a series of "spelling blocks" - each block consists of
#   two letters.
# Return true if the word can be spelled using the spelling blocks.
# Otherwise return false.
# Spelling blocks cannot be repeated. Once used, they are no longer available.
# The spellinf blocks are upper case, but can match letters of either case.

# In this particular problem, the two letters of a block are always '13' chars
#   apart, i.e. A and N, B and O, C and P, etc. Every letter is represented in
#   a single block, so there are 13 blocks in total.
# If these block properties  were not true, a different algorithm
#   for the method would be needed. So this method solves a specific problem
#   and cannot be generalized.

def block_word?(word)
  used = Array.new(13, false)
  word.upcase.chars.map(&:ord).each do |ch_ord|
    ndx = ch_ord % 13
    return false if used[ndx]
    used[ndx] = true
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
