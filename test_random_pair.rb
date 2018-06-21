require "minitest/autorun"
require_relative "random_pair.rb"

class TestRandomPair < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_random_pair_returning_array
    assert_equal(Array, random_pair([]).class)
  end

  def test_random_pair_returning_nested_array
    assert_equal(Array, random_pair([])[0].class)
  end

  def test_random_pair_fails_invalid_arguments
    assert_equal(false, random_pair({}))
  end

  def test_random_pair_fails_single_invalid_argument
    assert_equal(false, random_pair('s'))
  end

  def test_passing_invalid_array_type
    assert_equal(false, random_pair([2, 3]))
  end
  
end