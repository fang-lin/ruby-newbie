# for index in 1..5 do
#   puts "this is number #{index}."
# end
#
# for index in 1..5
#   puts "this is number #{index}."
# end
#
# 5.times do |k|
#   puts "time is #{k}"
# end
#
# 1.upto(5) { |k| puts "count is #{k}" }
#
#
# x = 5
# while x > 0 do
#   x -= 1
#   puts "descend to #{x}"
# end
#
# y = 5
# puts "count is #{y -= 1}" while y > 0
#
# puts "Enter a value :"
# val = gets
# puts "Entered value is:#{val}"
#

def warp(str, cols)
  result = ''
  while str.length > cols
    result = result.concat(str[0...cols].concat("\n"))
    str = str[cols..str.length]
  end
  result.concat(str[0...str.length].concat("\n"))
  result
end

puts warp('123456789123456789123456789123456789123456789123456789123456789', 10)

puts "\n"

def warp2(str, cols)
  wrappers = str.length / cols | 0
  (1..wrappers).each do |i|
    str = str.insert(i * cols + i - 1, "\n")
  end
  str
end

puts warp2('123456789123456789', 3)