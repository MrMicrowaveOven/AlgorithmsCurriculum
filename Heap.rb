class MinHeap
  def initialize(&prc)
    @values = []
    prc ||= Proc.new {|x,y| x <=> y}
    @comparator = prc
  end

  def min
    @values.first
  end

  def pop
    popped = @values.shift
    heapify_up!
    popped
  end

  def swap(key1, key2)
    @values[key1], @values[key2] = @values[key2], @values[key1]
  end

  def parent(child_index)
    parent_index = (child_index - 1)/2
    @values(parent_index)
  end

  def children(parent_index)
    child_index1 = 2*parent_index + 1
    child_index2 = 2*parent_index + 2
    child1, child2 = @values[child_index1], @values[child_index2]
    [child1, child2]
  end

  def insert
    @values.push
    heapify_up!
  end

  private

  def heapify_up!

  end

  def heapify_down!

  end
end
