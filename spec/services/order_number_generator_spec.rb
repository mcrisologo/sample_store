# frozen_string_literal: true
require 'rails_helper'

RSpec.describe OrderNumberGenerator do
  describe '#generate' do
    it 'sends an email' do
      date = Date.new(2023, 1, 1)
      order_number = described_class.new.generate(date)

      expect(order_number.length).to eq 11
      expect(order_number.include?('230101')).to be true
      expect(order_number.include?('I')).to be false
      expect(order_number.include?('L')).to be false
      expect(order_number.include?('O')).to be false
    end
  end
end
