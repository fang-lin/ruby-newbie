class Fizz_buzz

  def fizz_buzz(num)
    if num % 15 == 0 or "#{num}".index('3') != nil and "#{num}".index('5') != nil
      "FizzBuzz"
    elsif num % 3 == 0 or "#{num}".index('3') != nil
      "Fizz"
    elsif num % 5 == 0 or "#{num}".index('5') != nil
      "Buzz"
    else
      "#{num}"
    end
  end

  def fizz_buzz_for_list(arr)
    arr.map.collect { |i|
      fizz_buzz(i)
    }
  end
end