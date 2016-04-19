# Static Array

* When we write `arr = Array.new(5)`, it allocates 5 cells worth of
  memory. It stores the start of the range in `arr`.
* When we say `arr[2] = gizmo`, this issues a `STORE` instruction to
  cell `arr + 2*8`, storing as the value a the pointer to gizmo.
* `xyz = arr[2]` works likewise.
* We can do this because all data is stored **contiguously**.
* This requires a simple series of numeric operations either way.
* This means this is `O(1)` memory access; it is insensitive to the
  size of the array.
* If we try to access/store data past the end of the allocated region,
  we may get a segfault, or we may corrupt other data in the program.
* To enforce **bounds checking**, Ruby can store a length in the array
  object. It can look at whether the location is out of bounds, and
  return `nil` in this case.
* We haven't yet seen how to add more items and have the array grow.
