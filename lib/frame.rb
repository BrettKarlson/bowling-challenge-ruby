# frozen_string_literal: true

# require_relative 'score'

class Frame
  attr_reader :score

  def initialize(score)
    @score = score
  end

  def calculate_open
    @open_score = @score.roll_one + @score.roll_two if @score.strike? == false && @score.spare? == false
  end
end
