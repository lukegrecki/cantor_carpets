relative_require 'array2d'

class Fractal
  attr_reader :seed, :depth, :bits, :image

  def initialize(seed, depth)
    @seed = seed
    @depth = depth
    @bits = calculate_bits(new_bit_array)
    @image = create_image
  end

  def new_bit_array
    col   = Array.new(@seed.size ** @depth, 0)
    bit_array = Array.new(@seed[0].size ** @depth, col)
  end

  def calculate_bits(bit_array)
    seed_row_size = @seed.size
    seed_col_size = @seed[0].size
    row_size = bit_array.size
    col_size = bit_array[0].size

    if row_size == seed_row_size && col_size == seed_col_size
      return @seed
    end

    row_chunk = row_size / seed_row_size
    col_chunk = col_size / seed_col_size

    @seed.each_with_index do |x, xi|
      x.each_with_index do |y, yi|
        if y == 1
          rows = bit_array[(row_chunk * xi)...(row_chunk * (xi + 1))]
          subarray = rows.map {|row| row[(col_chunk * yi)...(col_chunk * (yi + 1))]}
          new_subarray = calculate_bits(subarray)

          new_subarray.each do |row|
            bit_array
          end

        end
      end
    end
  end

  def create_image
  end
end