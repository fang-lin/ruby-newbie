
puts "\x41\u3042".byteslice(-3).chr
puts "\x41\u3042".byteslice(-4).chr
puts "\x41\u3042".slice(-2).chr
puts "\x41\u3042".slice(2)



s = <<-HEREDOC
  123213
  123213
  123213
  123213
HEREDOC

puts s
