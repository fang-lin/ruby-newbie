require 'minitest/autorun'
require_relative '../app/fizz_buzz'

class Test_fizz_buzz < Minitest::Test

  def test_fizz_buzz_1
    assert_equal Fizz_buzz.fizz_buzz(1), "1"
  end

  def test_fizz_buzz_3
    assert_equal Fizz_buzz.fizz_buzz(3), "Fizz"
  end

  def test_fizz_buzz_30
    assert_equal Fizz_buzz.fizz_buzz(35), "FizzBuzz"
  end

  def test_fizz_buzz_for_list
    assert_equal Fizz_buzz.fizz_buzz_for_list((1..10).to_a), ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"]
  end
end