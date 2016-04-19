require_relative 'heap'

class Array
  def heap_sort!
    2.upto(count).each do |heap_sz|
      BinaryMinHeap.heapify_up(self, heap_sz - 1, heap_sz)
    end

    count.downto(2).each do |heap_sz|
      self[heap_sz - 1], self[0] = self[0], self[heap_sz - 1]
      BinaryMinHeap.heapify_down(self, 0, heap_sz - 1)
    end

    self.reverse!
  end
end
