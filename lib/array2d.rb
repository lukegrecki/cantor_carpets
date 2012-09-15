class Array2D
  def initialize(rows, columns)
    @data = Array.new(rows) { Array.new(columns) }
  end

  def to_s
    @data.to_s
  end

  def []=(x, y, value)
    case x
    when Integer
      case y
      when Integer
        @data[x][y] = value
      end
    when Range
      case y
      when Range
        x.each do |xi|
          y.each do |yi|
            @data[xi][yi] = value[xi - x.first][yi - y.first]
          end
        end
      end
    end
  end

  def [](x, y)
    case x
    when Integer
      case y
      when Integer
        @data[x][y]
      end
    when Range
      case y
      when Range
        subarray = Array.new(x.to_a.size) { Array.new(y.to_a.size) }
        x.each do |xi|
          y.each do |yi|
            subarray[xi][yi] = @data[xi][yi]
          end
        end
        subarray
      end
    end
  end


end