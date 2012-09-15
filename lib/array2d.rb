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
      when Range
        y.each {|yi| @data[x][yi] = value[yi - y.first]}    
      end
    when Range
      case y
      when Integer
        x.each {|xi| @data[xi][y] = value[xi - x.first]}
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
      when Range
        subarray = Array.new(y.to_a.size)
        y.each {|yi| subarray[yi - y.first] = @data[x][yi]}
        subarray
      end
    when Range
      case y
      when Integer
        subarray = Array.new(x.to_a.size)
        x.each {|xi| subarray[xi - x.first] = @data[xi][y]}
        subarray
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