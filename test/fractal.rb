require_relative '../lib/fractal'
require 'test/unit'
require 'matrix'

class FractalTest < Test::Unit::TestCase
  def setup
    @seed = [[1, 1], [0, 0]]
    @depth = 3
    @fractal = Fractal.new(@seed, @depth)
  end

  def test_initialize
    assert_instance_of(Fractal, Fractal.new(@seed, @depth))
  end

  def test_new_bit_array
    col = [0, 0, 0, 0, 0, 0, 0, 0]
    bits = Array.new(8, col)
    assert_equal(bits, @fractal.new_bit_array)
  end

  def test_bits
    # assert_equal(@fractal.bits, 
  end
end