 .require_relative "static_array"
require "byebug"

class DynamicArray
  attr_reader :length

  def initialize
    @store = StaticArray.new(8)
    @length = 0
    @capacity = 8
  end

  # O(1)
  def [](index)
    check_index(index)
    @store[index]
  end

  # O(1)
  def []=(index, value)
    check_index(index)
    until index <= @capacity
      # p "Capacity before resize is #{capacity}"
      resize!
      # p "Capacity after resize is #{capacity}"
    end
    length = index if index > @length
    @store[index] = value
  end

  # O(1)
  def pop
    empty_check!
    popped = @store[@length - 1]
    @store[-1] = nil
    @length -= 1
    popped
  end

  # O(1) ammortized; O(n) worst case. Variable because of the possible
  # resize.
  def push(val)
    # p "Should I resize for value #{val}?  Length is #{length} and @capacity is #{@capacity}"
    if @length >= @capacity
      # p "I shall indeed!"
      # p "Capacity before resize is #{capacity}"
      resize!
      # p "Capacity after resize is #{capacity}"
    end
    # p "Pushing #{val} to index #{length}"
    @store[length] = val
    @length += 1
  end

  # O(n): has to shift over all the elements.
  def shift
    empty_check!
    shifted = @store[0]
    new_store = StaticArray.new(@capacity)
    (@length - 1).times do |i|
      new_store[i] = @store[i + 1]
    end
    @length -= 1
    @store = new_store
    shifted
  end

  # O(n): has to shift over all the elements.
  def unshift(val)
    if @length >= @capacity
      resize!
    end
    new_store = StaticArray.new(@capacity)
    new_store[0] = val
    @length.times do |i|
      new_store[i + 1] = @store[i]
    end
    @store = new_store
    @length += 1
  end

  protected
  attr_accessor :capacity, :store
  attr_writer :length

  def check_index(index)
    raise 'index out of bounds' if index >= @length || index >= @capacity
  end

  # O(n): has to copy over all the elements to the new store.
  def resize!

    new_capacity = @capacity * 2

    # p "Resizing to #{new_capacity}"
    # Make a new array of greater @capacity
    new_array = StaticArray.new(new_capacity)

    # Copy over each element from the old array
    # p "Capacity was #{capacity}, now it's #{new_capacity}."
    # byebug
    @capacity = new_capacity

    length.times do |i|
      # p "Setting SA at #{i} to #{store[i]}"
      new_array[i] = @store[i]
    end

    @store = new_array
  end

  def empty_check!
    raise 'index out of bounds' if @length == 0
  end
end
