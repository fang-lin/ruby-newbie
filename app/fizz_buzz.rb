def fizz_buzz(num)

  result = ''
  if num % 3 == 0 or "#{num}".index('3') != nil
    result += "Fizz"
  end
  if num % 5 == 0 or "#{num}".index('5') != nil
    result += "Buzz"
  end

  result == '' ? "#{num}" : result

end

def fizz_buzz_for_list(arr)
  arr.map.collect { |i|
    fizz_buzz(i)
  }
end