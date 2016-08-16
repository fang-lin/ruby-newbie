def test
  for i in 0..500000 do
    yield i
  end
end

test do |x|
  puts x
end