require_relative '../lib/fractal'
require 'test/unit'
require 'matrix'

class FractalTest < Test::Unit::TestCase
  def setup
    @seed = Matrix[[1, 1], [0, 0]]
    @depth = 3
  end

  def test_initialize
    assert_instance_of(Fractal, Fractal.new(@seed, @depth))
  end

  def test_create_bits
  end

  def test_calculate_bits
  end
end