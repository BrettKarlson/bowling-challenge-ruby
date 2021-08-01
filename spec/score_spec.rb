# frozen_string_literal: true

require 'score'

RSpec.describe Score do
  context 'first roll' do
    it 'responds to a method to input first roll' do
      expect(subject).to respond_to(:roll_one)
    end

    it 'returns the number of pins' do
      subject.roll_one(pins: 9)
      expect(subject.result_roll_one).to eq(9)
    end

    it 'returns true for a strike' do
      subject.roll_one(pins: 10)
      expect(subject.strike?).to be_truthy
    end

    it 'completes the frame if strike' do
      subject.roll_one(pins: 10)
      expect(subject.result_roll_one).to eq(10)
      expect(subject.result_roll_two).to eq(0)
    end
  end

  context 'second roll' do
    it 'responds to a method to input second roll' do
      expect(subject).to respond_to(:roll_two)
    end

    it 'returns the number of pins' do
      subject.roll_two(pins: 7)
      expect(subject.result_roll_two).to eq(7)
    end

    it 'returns true for a spare' do
      subject.roll_one(pins: 7)
      subject.roll_two(pins: 3)
      expect(subject.spare?).to be_truthy
    end
  end
end
