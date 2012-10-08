require 'png'
require 'array_2d'

class Carpet
  attr_reader :seed, :depth, :bits, :image

  def initialize(seed, depth)
    @seed = seed
    @depth = depth
    compute_carpet
  end

  def compute_carpet
    @bits = calculate_bits(new_bit_array)
    @image = create_image
  end

  def new_bit_array
    Array2D.new(@seed.row_size ** @depth, 
                @seed.column_size ** @depth, 0)
  end

  def calculate_bits(bit_array)
    if bit_array.size == @seed.size
      return @seed
    end

    row_chunk = bit_array.row_size / @seed.row_size
    col_chunk = bit_array.column_size / @seed.column_size

    @seed.each_with_index do |e, index|
      xi = index[0]
      yi = index[1]
      row_range = (row_chunk * xi)...(row_chunk * (xi + 1))
      column_range = (col_chunk * yi)...(col_chunk * (yi + 1))
      if e == 1
        bit_array[row_range, column_range] = calculate_bits(bit_array[row_range, column_range])
      end
    end
    bit_array 
  end

  def create_image
    canvas = PNG::Canvas.new(@seed.column_size ** @depth, 
                             @seed.row_size ** @depth,
                             PNG::Color::White)
    canvas.each do |x, y, color|
      canvas[x, y] = PNG::Color::Black if @bits[-y, x] == 1
    end
    PNG.new(canvas)
  end

  def write_image(name='carpet.png')
    @image.save(name)
  end
end