require_relative '../lib/fractal'
require 'test/unit'

class FractalTest < Test::Unit::TestCase
  def setup
    @seed = Array2D.new(2, 3)
    @seed.state = [[1, 0, 1], [0, 1, 0]]
    @depth = 2
    @fractal = Fractal.new(@seed, @depth)
  end

  def test_initialize
    assert_instance_of(Fractal, Fractal.new(@seed, @depth))
  end

  def test_bits
    desired_array = Array2D.new(4, 9)
    desired_array[0, 0...9] = [1, 0, 1, 0, 0, 0, 1, 0, 1]
    desired_array[1, 0...9] = [0, 1, 0, 0, 0, 0, 0, 1, 0]
    desired_array[2, 0...9] = [0, 0, 0, 1, 0, 1, 0, 0, 0]
    desired_array[3, 0...9] = [0, 0, 0, 0, 1, 0, 0, 0, 0]
    assert_equal(desired_array, @fractal.bits)
  end

  def test_write_image
    seed = Array2D.new(3, 3)
    seed.state = [[1, 0, 1], [0, 0, 0],[1, 0, 1]]
    fractal = Fractal.new(seed, 6)
    fractal.write_image("test/test_fractal.png")
  end
end