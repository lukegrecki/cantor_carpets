class Fractal
  attr_reader :seed, :depth, :bits, :image

  def initialize(seed, depth)
    @seed = seed
    @depth = depth
    @bits = calculate_bits(new_bit_array)
    @image = create_image
  end

  def new_bit_array
    col   = Array.new(@seed.size    ** @depth, 0)
    bit_array = Array.new(@seed[0].size ** @depth, col)
  end

  def calculate_bits(bit_array)
    if bit_array.size == @seed.size && bit_array[0].size == @seed[0].size
      return @seed
    end

    # submatrices = Matrix.empty(@seed.row_size, @seed.column_size)
    # row_chunk = matrix.row_size / @seed.row_size
    # col_chunk = matrix.column_size / @seed.column_size

    # submatrices.each_with_index do |e, row, col|
    #   if @seed[row, col] == 1
    #     submatrix = matrix.minor(row_chunk * row, row_chunk,
    #                              col_chunk * col, col_chunk)
    #     calculate_bits(submatrix)
    #   end
    # end
  end

  def create_image
  end
end