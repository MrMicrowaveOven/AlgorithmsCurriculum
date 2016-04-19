# Sorting Performance

| name          | Time          | Space
| ------------- | ------------- | ----------- |
| HeapSort  WC  | `O(nlog(n))`  | `O(1)`      |
| MergeSort WC  | `O(nlog(n))`  | `O(n)`      |
| QuickSort AVG | `O(nlog(n))`  | `O(log(n))` |
| QuickSort WC  | `O(n ** 2)`   | `O(n ** 2)` |

HeapSort appears the best; it has excellent asymptotic time and space
bounds. However, because of the CPU caching, it is in practice the
slowest of the three.

* Memory hierarchy: cache, registers.

HeapSort plays poorly because it jumps around frequently. It was better
in times before CPUs cached so heavily.

QuickSort plays extremely well with the cache, and is the fastest of
all three in practice. However, it has variable performance, so if
predictable performance is a concern, you might prefer MergeSort.

MergeSort is good if you need predictable performance and have space
for extra memory. You might not have the extra space, which forces you
to HeapSort.
