# This class just dumbs down a regular Array to be staticly sized.
class StaticArray
  def initialize(capacity = 0)
    @capacity = capacity
    # p "Making StaticArray of size #{capacity}."
    @store = Array.new
  end

  # O(1)
  def [](index)
    # p "Checking StaticArray at #{index}"
    capacity_check(index)
    store[index]
  end

  # O(1)
  def []=(index, value)
    # p "Setting StaticArray at #{index} to #{value}, while capacity is #{@capacity}"
    capacity_check(index)
    # p "Successfully set StaticArray at #{index}"
    store[index] = value
  end

  protected

  attr_accessor :store

  private

  def capacity_check(index)
    raise 'index out of bounds' if index >= @capacity
  end

end
