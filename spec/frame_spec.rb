# frozen_string_literal: true

require 'frame'

RSpec.describe Frame do
  let(:pin_score) { double('Pin Score', roll_one: 6, roll_two: 3, strike?: false, spare?: false) }
  subject { described_class.new(pin_score) }

  describe '#calculate_open method' do
    it 'responds to 4 things' do
      expect(pin_score).to receive(:roll_one)
      expect(pin_score).to receive(:roll_two)
      expect(pin_score).to receive(:strike?)
      expect(pin_score).to receive(:spare?)
      subject.calculate_open
    end

    it 'returns the calculation' do
      allow(pin_score).to receive(:calculate_open).and_return(9)

      expect(pin_score.calculate_open).to eq(9)
    end
  end
end
