require_relative 'array2d'

class Fractal
  attr_reader :seed, :depth, :bits, :image

  def initialize(seed, depth)
    @seed = seed
    @depth = depth
    @bits = calculate_bits(new_bit_array)
    @image = create_image
  end

  def new_bit_array
    Array2D.new(@seed.row_size ** @depth, 
                @seed.column_size ** @depth, 0)
  end

  def calculate_bits(bit_array)
    puts "seed size is #{@seed.size}"
    puts "bit_array size is #{bit_array.size}" 
    if bit_array.size == @seed.size
      puts "bit_array is same size"
      puts "RETURNED"
      return @seed
    end

    row_chunk = bit_array.row_size / @seed.row_size
    col_chunk = bit_array.column_size / @seed.column_size

    puts "row_chunk is #{row_chunk}"
    puts "col_chunk is #{col_chunk}"

    @seed.each_with_index do |e, index|
      xi = index[0]
      yi = index[1]
      row_range = (row_chunk * xi)...(row_chunk * (xi + 1))
      column_range = (col_chunk * yi)...(col_chunk * (yi + 1))
      puts "bit_array size is #{bit_array.size}"  
      puts "seed_row is #{xi}"
      puts "seed_column is #{yi}"
      puts "row_range is #{row_range}"
      puts "column_range is #{column_range}"
      puts "bit_array is #{bit_array}"
      puts "element is #{e}"
      puts
      if e == 1
        puts "subarray is #{bit_array[row_range, column_range]}"
        bit_array[row_range, column_range] = calculate_bits(bit_array[row_range, column_range])
      end
    end 
  end

  def create_image
  end
end