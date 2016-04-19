# Sorting

## Bubble sort

```
def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true

    (0...(arr.length - 1)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end

  arr
end
```

The best case for bubble sort is a sorted array (time `O(n)`). The
worst case is a reversed array (`O(n**2)`).

Bubble sort is an **in-place** sort: it doesn't need to make copies of
the array. It takes `O(1)` memory; it only needs to store the `sorted`
and `i` variables.

## Merge Sort

```
def merge_sort(arr)
  return arr if arr.count < 2

  left = arr[0...(arr.count / 2)]
  right = arr[(arr.count / 2)...(arr.count)]

  sleft = merge_sort(left)
  sright = merge_sort(right)

  merge(sleft, sright)
end

def merge(sleft, sright)
  merged_arr = []
  while !(sleft.empty? || sright.empty?)
    if sleft[0] < sright[0]
      merged_arr << sleft.shift
    else
      merged_arr << sright.shift
    end
  end

  merged_arr + sleft + sright
end
```

Because merge sort breaks the array in half each time, it can only
have a recursion depth of at most `log_2(n)` calls. At each recursion
depth level, `n` elements are merged. Therefore, the time complexity
is `nlog(n)`.

This time complexity is both the best and worst case; no matter the
starting order of the array, `log_2(n)` recursions are needed, and all
the elements need to be merged at each level.

## Quicksort

```
def quick_sort(arr, start_idx = 0, len = arr.length)
  return arr if len < 2

  # choose pivot in middle
  mid_idx = start_idx + (len / 2)
  pivot = arr[mid_idx]

  # swap pivot to front
  arr[start_idx], arr[mid_idx] = arr[mid_idx], arr[start_idx]
  pivot_idx = start_idx

  ((start_idx + 1)...(start_idx + len)).each do |cur_idx|
    cur_el = arr[cur_idx]
    if cur_el < pivot
      # move pivot to the right; make room by moving the element to
      # the right of the pivot to the current index. Move cur element
      # to left of pivot.
      arr[cur_idx] = arr[pivot_idx + 1]
      arr[pivot_idx + 1] = pivot
      arr[pivot_idx] = cur_el

      pivot_idx += 1
    end
  end

  # recursively sort the left/right halves
  left_len = pivot_idx - start_idx
  right_len = len - (left_len + 1)
  quick_sort(arr, start_idx, left_len)
  quick_sort(arr, pivot_idx + 1, right_len)

  arr
end
```

In the best case, quicksort always chooses a pivot that evenly divides
the array. At each level, quicksort goes through the entire array to
partition the array, which takes `O(n)` time. So the best case, like
mergesort, is `O(nlogn)`.

However, there is the possibility that quicksort will choose a poor
pivot; the worst case is if every element is larger (or smaller) than
the pivot. Then one side has `n-1` elements and the other has
zero. This degenerates to an `O(n**2)` time complexity.

We won't do the **average-case** time analysis, but on average, for a
randomly shuffled array, the time complexity of quicksort is
`O(nlogn)`. This reflects the idea that a randomly selected pivot
tends to pretty evenly divide the array.

We used the middle element as a pivot. In early quicksort
implementations, the first element was typically chosen. This was a
bad choice, because if the array is already sorted, `arr[0]` is the
worst possible pivot choice. Since it is common to encounter sorted
arrays, another pivot choice was made.
