require 'minitest/autorun'
require_relative '../app/fizz_buzz'

describe 'fizz_buzz' do
  it 'should return "1" when gaven 1' do
    fizz_buzz(1).must_equal "1"
  end

  it 'should return "Fizz" when gaven 3' do
    fizz_buzz(3).must_equal "Fizz"
  end

  it 'should return "Buzz" when gaven 5' do
    fizz_buzz(5).must_equal "Buzz"
  end

  it 'should return "FizzBuzz" when gaven 15' do
    fizz_buzz(15).must_equal "FizzBuzz"
  end

  it 'should return "FizzBuzz" when gaven 53' do
    fizz_buzz(53).must_equal "FizzBuzz"
  end

  it 'should return "Fizz" when gaven 13' do
    fizz_buzz(13).must_equal "Fizz"
  end

  it 'should return "FizzBuzz" when gaven 51' do
    fizz_buzz(52).must_equal "Buzz"
  end

  it 'should return "FizzBuzz" when gaven 51' do
    fizz_buzz(51).must_equal "FizzBuzz"
  end

  it 'should return "FizzBuzz" when gaven 30' do
    fizz_buzz(30).must_equal "FizzBuzz"
  end

end

describe 'fizz_buzz_for_list' do

  it 'should return a correct array' do
    fizz_buzz_for_list(1..10).must_equal ['1', '2', 'Fizz', '4', 'Buzz', 'Fizz', '7', '8', 'Fizz', 'Buzz']
  end

end