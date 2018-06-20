require "minitest/autorun"
require_relative "random_pair.rb"

class TestRandomPair < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_random_pair_returning_array
    assert_equal(Array, random_pair([], []))
  end
  
end