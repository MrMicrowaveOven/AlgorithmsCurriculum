# Dynamic array

* A dynamic array keeps track of:
    * a *store* (where the references are stored)
    * the total store space
    * the number of items currently stored.
* Indexing and setting work as before.
* `push`:
    * We keep a **buffer** to the right of the store space.
    * If the buffer has space, it is easy, `O(1)`.
    * Otherwise, we have to reallocate a new store, which is `O(n)`,
      copying all references.
    * If we double store size, amortized this is `O(1)` over many
      pushes.
* `pop`:
    * Always `O(1)`, we just decrement the length.
    * Typically dynarrays don't resize down, which possibly wastes
      memory.
* `shift`/`unshift`
    * If no space is left on the left, takes `O(n)` time.
    * A common solution is to use a **ring buffer**.
    * Ruby doesn't use a ring buffer, but it does have fast shift by
      incrementing starting pointer.
    * Why not use a ring buffer: it appears to be slower to access?
    * This requires additional overhead.
* **Insertion and remove in the middle of an array is `O(n)`**
    * Must shift over all the items.

## Time Complexity Chart

Standard single-sided dynamic array:

operation|worst|amoritzed
---------|-----|---------
`[]`|O(1)|O(1)
`[]=`|O(1)|O(1)
`push`|O(n)|O(1)
`pop`|O(1)|O(1)
`shift`|O(n)|O(n)
`unshift`|O(n)|O(n)

Ring buffer:

operation|worst|amoritzed
---------|-----|---------
`[]`|O(1)|O(1)
`[]=`|O(1)|O(1)
`push`|O(n)|O(1)
`pop`|O(1)|O(1)
`shift`|O(1)|O(1)
`unshift`|O(n)|O(1)

Ruby is in-between: it has a `O(1)` shift, but `O(n)` unshift.
