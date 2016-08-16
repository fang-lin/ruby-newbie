require 'minitest/autorun'
require_relative '../app/num_to_words'

describe Num_to_words do

  {
      23409860645098 => [23, 409, 860, 645, 98],
      0 => [0],
      1000 => [1, 0],
      1600000123 => [1, 600, 0, 123],
      909192930000012 => [909, 192, 930, 0, 12],
  }.each do |key, value|
    it '' do
      Num_to_words.to_segments(key).must_equal value
    end
  end

  {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      12 => 'twelve',
      34 => 'thirty-four',
      50 => 'fifty',
      99 => 'ninety-nine',
      100 => 'one hundred',
      234 => 'two hundred thirty-four',
      999 => 'nine hundred ninety-nine',
  }.each do |key, value|
    it '' do
      Num_to_words.to_words(key).must_equal value
    end
  end

  {
      0 => 'zero',
      5 => 'five',
      10 => 'ten',
      11 => 'eleven',
      50 => 'fifty',
      100 => 'one hundred',
      1000 => 'one thousand',
      12345 => 'twelve thousand, three hundred forty-five',
      1234567890 => 'one billion, two hundred thirty-four million, five hundred sixty-seven thousand, eight hundred ninety',
      120001001001 => 'one hundred twenty billion, one million, one thousand, one',
      909192930000012 => 'nine hundred nine trillion, one hundred ninety-two billion, nine hundred thirty million, twelve',
  }.each do |key, value|
    it '' do
      Num_to_words.num_to_words(key).must_equal value
    end
  end

end