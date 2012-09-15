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

  def test_new_bit_array
    # puts @fractal.new_bit_array
    # puts @fractal.new_bit_array.size
  end

  # def test_bits
  #   puts @fractal.bits
  #   assert_equal([0], @fractal.bits)
  # end
end