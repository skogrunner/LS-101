# Easy 9 - problem 9 - Grade book
# Create a method that takes three test scores, each of which
#   will be between 0 and 100.
# Calculate the mean score and return a letter grade, as follows:
# 90 <= score <= 100  = 'A'
# 80 <= score < 90  = 'B'
# 70 <= score < 80  = 'C'
# 60 <= score < 70  = 'D'
# 0 <= score < 60  = 'F'

def get_grade(score1, score2, score3)
  mean_score = (score1 + score2 + score3) / 3
  case mean_score
  when (90..Float::INFINITY) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else                'F'
  end
end

puts get_grade(95, 90, 93) == 'A'
puts get_grade(50, 50, 95) == 'D'
puts get_grade(200, 300, 261) == 'A'
