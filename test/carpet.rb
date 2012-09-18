require_relative '../lib/carpet'
require 'test/unit'

class CarpetTest < Test::Unit::TestCase
  def setup
    @seed = Array2D.new(2, 3)
    @seed.state = [[1, 0, 1], [0, 1, 0]]
    @depth = 2
    @carpet = Carpet.new(@seed, @depth)
  end

  def test_initialize
    assert_instance_of(Carpet, Carpet.new(@seed, @depth))
  end

  def test_bits
    desired_array = Array2D.new(4, 9)
    desired_array[0, 0...9] = [1, 0, 1, 0, 0, 0, 1, 0, 1]
    desired_array[1, 0...9] = [0, 1, 0, 0, 0, 0, 0, 1, 0]
    desired_array[2, 0...9] = [0, 0, 0, 1, 0, 1, 0, 0, 0]
    desired_array[3, 0...9] = [0, 0, 0, 0, 1, 0, 0, 0, 0]
    assert_equal(desired_array, @carpet.bits)
  end

  def test_write_image
    seed = Array2D.new(3, 3)
    seed.state = [[1, 0, 1], [0, 0, 0],[1, 0, 1]]
    carpet = Carpet.new(seed, 6)
    carpet.write_image('test/carpet.png')
  end
end