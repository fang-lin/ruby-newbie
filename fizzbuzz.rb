def fizz_buzz(num)
  if num % 15 == 0 or "#{num}".index('3') != nil and "#{num}".index('5') != nil
    "#{num}/FizzBuzz"
  elsif num % 3 == 0 or "#{num}".index('3') != nil
    "#{num}/Fizz"
  elsif num % 5 == 0 or "#{num}".index('5') != nil
    "#{num}/Buzz"
  else
    "#{num}/#{num}"
  end
end

def fizz_buzz_for_list(arr)
  arr.map.collect{|i|
    fizz_buzz(i)
  }
end

puts fizz_buzz_for_list((1..100).to_a)