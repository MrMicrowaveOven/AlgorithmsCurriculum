require_relative "static_array"

class RingBuffer
  attr_reader :length

  def initialize
    @length = 0
    @store = StaticArray.new
    @start_idx = 0
    @capacity = 0
  end

  # O(1)
  def [](index)
    check_index(index)
    @store[(index + @start_idx) % @capacity]
  end

  # O(1)
  def []=(index, val)
    check_index(index)
    @store[(index + @start_idx) % @capacity] = val
  end

  # O(1)
  def pop
  end

  # O(1) ammortized
  def push(val)
  end

  # O(1)
  def shift
  end

  # O(1) ammortized
  def unshift(val)
  end

  protected
  attr_accessor :capacity, :start_idx, :store
  attr_writer :length

  def check_index(index)
    raise 'index out of bounds' if index >= length
  end

  def resize!
  end
end
