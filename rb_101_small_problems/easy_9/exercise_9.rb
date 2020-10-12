# input: 3 integers (scores)
# output: string (letter value associated with the grade)
# tested values are between 0 and 100, there are no negative nunmbers and none that are greater than 100
# calculate the mean average of all 3 grades and use that value to determine the grade
# data structure: integer
# algo:
# use case when structure for determining grade
# set a variable as the mean average score of the 3 grades
# use case and when for all letter grades to return appropriate one for the mean score

def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3
  case mean
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  when 0..59
    'F'
  end
end

# or
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end