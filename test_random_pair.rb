require 'minitest/autorun'
require_relative 'random_pair.rb'

class TestRandomPair < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_random_pair_returning_array
    assert_equal(Array, random_pair(['asd']).class)
  end

  def test_random_pair_returning_nested_array
    assert_equal(Array, random_pair(['asd'])[0].class)
  end

  def test_random_pair_fails_invalid_argument
    assert_equal(false, random_pair({}))
  end

  def test_passing_invalid_array_type
    assert_equal(false, random_pair([2, 3]))
  end

  def test_random_pair_returns_split_string
    assert_equal([['Steve', 'Jobs']], random_pair(['Steve Jobs']))
  end

  def test_random_pair_split_multiple
    namelist = ['Steve Jobs', 'Steve Wozniak']
    assert_equal('Steve', random_pair(namelist)[1][0])
  end

  def test_random_pair_shuffles_names
    namelist = ['Jason Vorhees', 'Bill Gates', 'Tony Tiger', 'Rumple Stiltskin', 'Obi-Wan Kenobi']
    refute_equal(random_pair(namelist), random_pair(namelist))
  end
  
  def test_random_pair_handles_single_names
    namelist = ['Jason Vorhees', 'Bill Gates', 'Tony Tiger', 'Rumple Stiltskin', 'Obi-Wan Kenobi', 'Shaq', 'Queen', 'Lucifer']
    refute_equal(random_pair(namelist), random_pair(namelist))
    assert_equal(false, random_pair(namelist).include?(nil))
    p namelist
    p random_pair(namelist)
  end
end