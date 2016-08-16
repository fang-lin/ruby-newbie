require 'minitest/autorun'
require_relative '../app/auto_wrap'

describe 'auto_wrap' do

  def setup
    @paragraph = 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language.'
  end

  it '5 characters each line' do
    expectation = <<EOF
Ruby
is a
dynamic,
reflective,
object-oriented,
general-purpose
programming
language.
EOF
    auto_wrap(@paragraph, 5).must_equal expectation
  end

  it '10 characters each line' do
    expectation = <<EOF
Ruby is a
dynamic,
reflective,
object-oriented,
general-purpose
programming
language.
EOF
    auto_wrap(@paragraph, 10).must_equal expectation
  end

  it "must respond positively" do
    expectation = <<EOF
Ruby is a dynamic, reflective,
object-oriented, general-purpose
programming language.
EOF
    auto_wrap(@paragraph, 40).must_equal expectation
  end

end