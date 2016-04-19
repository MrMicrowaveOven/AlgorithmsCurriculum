require_relative 'heap2'

class PriorityMap
  def initialize(&prc)
    self.map = {}
    self.queue = BinaryMinHeap.new do |key1, key2|
      prc.call(self.map[key1], self.map[key2])
    end
  end

  def [](key)
    return nil unless self.map.has_key?(key)
    self.map[key]
  end

  def []=(key, value)
    if self.map.has_key?(key)
      update(key, value)
    else
      insert(key, value)
    end
  end

  def count
    self.map.count
  end

  def empty?
    count == 0
  end

  def extract
    key = self.queue.extract
    value = self.map.delete(key)

    [key, value]
  end

  def has_key?(key)
    self.map.has_key?(key)
  end

  protected
  attr_accessor :map, :queue

  def insert(key, value)
    self.map[key] = value
    self.queue.push(key)

    nil
  end

  def update(key, value)
    throw "tried to update non-existent key" unless self.map.has_key?(key)
    self.map[key] = value
    self.queue.reduce!(key)

    nil
  end
end

# TESTING

def main
  pm = PriorityMap.new { |value1, value2| value1 <=> value2 }
  pm["A"] = 10
  pm["B"] = 15
  pm["B"] = 5

  p pm
end

main if __FILE__ == $PROGRAM_NAME
