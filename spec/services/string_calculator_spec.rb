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
  end
end
