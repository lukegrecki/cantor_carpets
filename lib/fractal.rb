
class Fractal
  attr_accessor :seed, :depth

  def initialize(seed, depth)
    @seed = seed
    @depth = depth
  end

  def bits
    @bits ||= create_bits
  end

  def create_bits
    @bits = nil
    
  end

end