class Array2D
  attr_reader :state

  def initialize(rows, columns)
    @state = Array.new(rows) { Array.new(columns) }
  end

  def to_s
    @state.to_s
  end

  def ==(o)
    o.class == self.class && o.state == state
  end

  def size
    [@state.size, @state[0].size]
  end

  def row_size
    @state.size
  end

  def column_size
    @state[0].size
  end

  def []=(x, y, value)
    case x
    when Integer
      case y
      when Integer
        @state[x][y] = value
      when Range
        y.each {|yi| @state[x][yi] = value[yi - y.first]}    
      end
    when Range
      case y
      when Integer
        x.each {|xi| @state[xi][y] = value[xi - x.first]}
      when Range
        x.each do |xi|
          y.each do |yi|
            @state[xi][yi] = value[xi - x.first][yi - y.first]
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
        @state[x][y]
      when Range
        subarray = Array.new(y.to_a.size)
        y.each {|yi| subarray[yi - y.first] = @state[x][yi]}
        subarray
      end
    when Range
      case y
      when Integer
        subarray = Array.new(x.to_a.size)
        x.each {|xi| subarray[xi - x.first] = @state[xi][y]}
        subarray
      when Range
        subarray = Array.new(x.to_a.size) { Array.new(y.to_a.size) }
        x.each do |xi|
          y.each do |yi|
            subarray[xi][yi] = @state[xi][yi]
          end
        end
        subarray
      end
    end
  end
end