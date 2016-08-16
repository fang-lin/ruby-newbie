require 'minitest/autorun'
require_relative '../app/auto_wrap'

class Test_auto_wrap < Minitest::Test

  def test_auto_wrap_5
    text = 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language.'
    assert_equal "Ruby\nis a\ndynamic,\nreflective,\nobject-oriented,\ngeneral-purpose\nprogramming\nlanguage.\n", Auto_wrap.auto_wrap(text, 5)
  end

  def test_auto_wrap_10
    text = 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language.'
    assert_equal "Ruby is a\ndynamic,\nreflective,\nobject-oriented,\ngeneral-purpose\nprogramming\nlanguage.\n", Auto_wrap.auto_wrap(text, 10)
  end

end