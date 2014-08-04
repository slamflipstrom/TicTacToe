class Player
  attr_accessor :name, :score
  attr_reader :mark, :value
  
 
  
  def initialize (name, mark, value)
    @name = name
    @mark = mark
    @score = 0
    @value = value
  end
  
  def score_bump
    @score += 1
  end
end
