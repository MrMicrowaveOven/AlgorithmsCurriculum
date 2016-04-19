require 'byebug'
class QuickSort
  # Quick sort has average case time complexity O(nlogn), but worst
  # case O(n**2).

  # Not in-place. Uses O(n) memory.
  def self.sort1(array)
    return array if array.empty?

    # Shuffle up the pivot
    new_pivot = rand(array.length)
    array[0], array[new_pivot] = array[new_pivot], array[0]

    pivot = array.first

    left = array.select { |el| pivot > el }
    middle = array.select { |el| pivot == el }
    right = array.select { |el| pivot < el }

    sort1(left) + middle + sort1(right)
  end

  # In-place. Uses O(log(n)) space for recursion.
  def self.sort2!(array, start = 0, length = array.length, &prc)
    prc ||= Proc.new { |el1, el2| el1 <=> el2 }

    return array if length < 2

    pivot_idx = partition(array, start, length, &prc)

    left_length = pivot_idx - start
    right_length = length - (left_length + 1)
    sort2!(array, start, left_length, &prc)
    sort2!(array, pivot_idx + 1, right_length, &prc)

    array
  end

  def self.partition(array, start, length, &prc)
    prc ||= Proc.new { |el1, el2| el1 <=> el2 }

    # To reduce probability of pathalogically bad data set, shuffle pivot.
    # new_pivot = start + rand(length)
    # array[start], array[new_pivot] = array[new_pivot], array[start]

    pivot_idx, pivot = start, array[start]
    ((start + 1)...(start + length)).each do |idx|
      val = array[idx]
      if prc.call(pivot, val) < 1
        # if the element is greater than or equal to the pivot, leave
        # where it is.
      else
        # Three-way shuffle: pivot_idx + 1 => idx, pivot_idx =>
        # pivot_idx + 1, idx => pivot_idx.

        # move self[pivot_idx + 1] to idx, which keeps this bigger item
        # to the right of the pivot.
        array[idx] = array[pivot_idx + 1]
        # move the pivot forward one, to where the larger item used to live.
        array[pivot_idx + 1] = pivot
        # move the smaller item to one to the left of the pivot.
        array[pivot_idx] = val

        pivot_idx += 1
      end
    end

    pivot_idx
  end
end
