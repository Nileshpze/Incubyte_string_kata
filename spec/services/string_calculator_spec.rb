# spec/services/string_calculator_spec.rb
require 'rails_helper'

RSpec.describe StringCalculator do
  subject(:calc) { described_class.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calc.add('')).to eq 0
    end

    it 'returns the number when a single number is provided' do
      expect(calc.add('1')).to eq 1
    end

    it 'adds two comma separated numbers' do
      expect(calc.add('1,5')).to eq 6
    end

    it 'adds any amount of numbers' do
      expect(calc.add('1,2,3,4')).to eq 10
    end
  end
end
