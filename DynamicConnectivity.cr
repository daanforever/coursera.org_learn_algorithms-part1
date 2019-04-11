
class UF

  def initialize(@data : Array(Array(Int32)))
    @optimized = Array(Array(Int32)).new
  end

  def optimize
    if @optimized.empty?
      @optimized = [@data.first]
      @data.each do |pair|
        union(pair) unless connected?(pair)
      end
    else
      @optimized
    end
  end

  def connected?(pair : Array(Int32))
    @optimized.any? do |block|
      block.includes?(pair[0]) && block.includes?(pair[1])
    end
  end

  def union(pair : Array(Int32))
  end

  def dump
    puts optimize
  end

  private def find(Int32)
    
  end
end

uf =  UF.new(
        [[1,2], [3,4], [5,6], [7,8], [7,9], [2,8], [0,5], [1,9]]
      )

uf.dump
