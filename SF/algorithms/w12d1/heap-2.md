# Heaps 2

* Array representation of a heap
* Heapsort

```ruby
class Array
  def heap_sort!
    heapify!
    unheapify!
    reverse!
  end

  private

  def heapify!
    heap_len = 1
    while heap_len < length
      current = heap_len
      parent = parent_idx(current)
      while self[current] < self[parent]
        swap!(current, parent)
        current = parent
        parent = parent_idx(current)
      end
      heap_len += 1
    end
  end

  def unheapify!
    heap_len = length
    while heap_len > 0
      swap!(0, heap_len - 1)
      heap_len -= 1
      i = 0
      while need_to_heapify_down?(i, heap_len)
        smallest_child = children_idx(i, heap_len).min_by { |idx| self[idx] }
        swap!(i, smallest_child)
        i = smallest_child
      end
    end
  end

  def need_to_heapify_down?(i, heap_len)
    children_idx(i, heap_len).any? { |child_idx| self[child_idx] < self[i] }
  end

  def parent_idx(i)
    i.zero? ? 0 : (i - 1) / 2
  end

  def children_idx(i, heap_len = length)
    [(2 * i) + 1, (2 * i) + 2].select { |idx| idx < heap_len }
  end

  def swap!(i1, i2)
    self[i1], self[i2] = self[i2], self[i1]
  end
end

```
