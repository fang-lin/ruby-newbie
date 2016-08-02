require 'spec_helper'
require_relative '../num_to_words'

RSpec.describe NumFormatter, type: :model do

  describe '#split_to_segments' do

    it "should return [23, 409, 860, 645, 98]" do
      result = NumFormatter.to_segments(23409860645098)
      expect(result).to eq([23, 409, 860, 645, 98])
    end

    it "should return [0]" do
      result = NumFormatter.to_segments(0)
      expect(result).to eq([0])
    end

    it "should return [1, 0]" do
      result = NumFormatter.to_segments(1000)
      expect(result).to eq([1, 0])
    end

    it "should return [1, 600, 0, 123]" do
      result = NumFormatter.to_segments(1600000123)
      expect(result).to eq([1, 600, 0, 123])
    end

  end

  describe '#to_words' do
    context 'when input < 999' do
      it "should return number words" do
        result = NumFormatter.to_words(999)
        expect(result).to eq('nine hundred ninety-nine')
      end

      it "should return number words" do
        result = NumFormatter.to_words(0)
        expect(result).to eq('zero')
      end

      it "should return number words" do
        result = NumFormatter.to_words(1)
        expect(result).to eq('one')
      end

      it "should return number words" do
        result = NumFormatter.to_words(2)
        expect(result).to eq('two')
      end

      it "should return number words" do
        result = NumFormatter.to_words(12)
        expect(result).to eq('twelve')
      end

      it "should return number words" do
        result = NumFormatter.to_words(34)
        expect(result).to eq('thirty-four')
      end

      it "should return number words" do
        result = NumFormatter.to_words(50)
        expect(result).to eq('fifty')
      end

      it "should return number words" do
        result = NumFormatter.to_words(99)
        expect(result).to eq('ninety-nine')
      end

      it "should return number words" do
        result = NumFormatter.to_words(100)
        expect(result).to eq('one hundred')
      end

      it "should return number words" do
        result = NumFormatter.to_words(234)
        expect(result).to eq('two hundred thirty-four')
      end

      it "should return number words" do
        result = NumFormatter.to_words(999)
        expect(result).to eq('nine hundred ninety-nine')
      end

    end
  end
end