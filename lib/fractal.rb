require 'matrix'

class Matrix
  def []=(i, j, x)
    @rows[i][j] = x
  end

  def size
    [row_size, column_size]
  end
end

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
    @bits = Matrix.zero(@seed.row_size    ** @depth,
                        @seed.column_size ** @depth)
    calculate_bits(@bits)
  end

  def calculate_bits(matrix)
    return @seed if matrix.size == @seed.size

    submatrices = Matrix.empty(@seed.row_size, @seed.column_size)
    row_chunk = matrix.row_size / @seed.row_size
    col_chunk = matrix.column_size / @seed.column_size

    submatrices.each_with_index do |e, row, col|
      if @seed[row, col] == 1
        submatrix = matrix.minor(row_chunk * row, row_chunk,
                                 col_chunk * col, col_chunk)
        calculate_bits(submatrix)
      end
    end
  end
end