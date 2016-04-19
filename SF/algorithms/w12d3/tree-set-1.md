# Binary Search Tree

* `include?`, `insert` are `O(depth)`.
* Keeps things in sorted order.

## Keeping Things Balanced

* Wrong insertion order can lead to `O(n)` depth.
* `depth` of a subtree, `balance` at a node is difference in depths.
* Depth is `O(log(n))` if you keep balances from getting way out of
  whack.
* We'll fix this with **AVL** tree.

## Tree Rotations

* Many equivalent BSTs.
* Demonstrate a right rotation.
* Show how a right rotation repairs a balance of `-2` at a node
    * Works if left child has balance of `-1` or `0`.
    * Fails if left child has balance of `0`.
