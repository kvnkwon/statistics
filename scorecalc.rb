class ScoreCalculator
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def find_high_score
    high_score = @scores[0]
    @scores.each do |score|
      high_score = score if score > high_score
    end
    high_score
  end

  def find_low_score
    low_score = @scores[0]
    @scores.each do |score|
      low_score = score if score < low_score
    end
    low_score
  end

  def find_mean
    total = @scores.inject(:+)
    total.to_f / @scores.size
  end

end