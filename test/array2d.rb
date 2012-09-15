require_relative '../lib/array2d'
require 'test/unit'

class Array2DTest < Test::Unit::TestCase
  def setup
    @array2d = Array2D.new(3, 5)
  end

  def test_initialize
    assert_instance_of Array2D, Array2D.new(3, 5)
  end

  def test_bracket_with_integers
    @array2d[1, 2] = 4
    assert_equal 4, @array2d[1, 2]
  end

  def test_bracket_with_ranges
    @array2d[0..1, 0..1] = [[0, 1], [2, 3]]
    assert_equal [[0, 1], [2, 3]], @array2d[0..1, 0..1]
  end

  def test_bracket_with_integers_and_ranges
    @array2d[0..1, 0] = [0, 1]
    assert_equal [0, 1], @array2d[0..1, 0]

    @array2d[0, 0..1] = [2, 3]  
    assert_equal [2, 3], @array2d[0, 0..1]
  end
end