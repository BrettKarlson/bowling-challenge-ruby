# frozen_string_literal: true

class Score
  attr_reader :roll_one_pins, :strike, :roll_two_pins, :spare

  def initialize
    # @roll_one_pins
    # @strike
    # @roll_two_pins
    # @spare
  end

  def roll_one(pins:)
    @roll_one_pins = pins
  end

  def strike?
    @strike = true if @roll_one_pins == 10
  end

  def roll_two(pins:)
    @roll_two_pins = pins
  end

  def spare?
    @spare = true if @roll_one_pins + @roll_two_pins == 10
  end
end
