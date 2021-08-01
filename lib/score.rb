# frozen_string_literal: true

class Score
  attr_reader :result_roll_one, :result_roll_two

  def initialize
    # @roll_one_pins
    # @roll_two_pins
  end

  def roll_one(pins:)
    if pins == 10
    @result_roll_one = 10
    @result_roll_two = 0
    finish_frame
    else
      @result_roll_one = pins
    end
  end

  def strike?
    @result_roll_one == 10
  end

  def roll_two(pins:)
    @result_roll_two = pins
  end

  def spare?
    @result_roll_one < 10 && @result_roll_one + @result_roll_two == 10
  end

  def finish_frame
    
  end
end
