require_relative 'scorecalc' #this allows us to use scorecalc.rb
scores = [] #making an empty array to store the scores from scores.txt

File.open('scores.txt') do |scores_file|
   #takes in the scores.txt file and closes it after the block is done.
   #scores.txt becomes scores_file
  scores_file.each do |score| #each score in scores.txt becomes |score|
    scores << score.to_i #turn each one into an integer and storing them in the array.
  end
end

calc = ScoreCalculator.new(scores) #made a new instance of the scorecalculator class.
#scorecalculator class comes from the scorecalc.rb
#the parameter (scores) when calling .new is sent to the initialize method in
#the ScoreCalculator class.

puts "Highest test score: #{calc.find_high_score}"
puts "Lowest test score: #{calc.find_low_score}"
puts "Average test score: #{sprintf('%.2f', calc.find_mean)}"
