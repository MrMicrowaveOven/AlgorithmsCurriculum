# Heaps 1

* Priority queue vs FIFO, FILO.
* Tree heap.
* Heapify up, heapify down.
* Depth of tree as related to number of elements.
    * Derivation of the max size of 32 bit number.
* Examples:
    * Producer/Consumer: emails.
    * Dijkstra's algorithm: discovery.
    * Interactive voting for next song to play.
    * Heapsort
    * kth min element
        * Can be done in O(k log n) if you build the heap in O(n) time.
        * Can do it in O(n log k) with a min heap of size k.

```ruby
class Heap
  def initialize(vals)
    @store = []
    vals.each { |val| insert(val) }
  end

  def insert(val)
    @store << val
    heapify_up!
    self
  end

  def pop_min
    return nil if length.zero?
    val = min
    swap!(0, length - 1)
    @store.pop
    heapify_down!
    val
  end

  def min
    @store.first
  end

  private

  def heapify_up!
    i = length - 1
    while i > 0
      current = @store[i]
      parent = @store[parent_idx(i)]
      if current < parent
        swap!(i, parent_idx(i))
        i = parent_idx(i)
      else
        break
      end
    end
  end

  def heapify_down!
    i = 0
    while i <= parent_idx(@store.length - 1)
      smallest_child = children_idx(i).min_by { |idx| @store[idx] }
      if @store[i] > @store[smallest_child]
        swap!(i, smallest_child)
        i = smallest_child
      else
        break
      end
    end
  end

  def parent_idx(i)
    i.zero? ? 0 : (i - 1) / 2
  end

  def children_idx(i)
    [(2 * i) + 1, (2 * i) + 2].select { |idx| idx < @store.length }
  end

  def swap!(i1, i2)
    @store[i1], @store[i2] = @store[i2], @store[i1]
  end

  def length
    @store.length
  end
end
```
