# Memory and Pointers

* All of a program's data is stored in RAM.
* The RAM consists of cells, each of 64bits. This is the **word size**.
* All data consists is represented in a cell as a string of bits:
    * Integers
    * Floating point numbers
    * ASCII characters are represented as 8bits, there are 8chars/word.
* CPU Instructions are of the type: `ADDI(ptr1, ptr2, store_ptr)`.
* There are different instructions for different types of operands, the
  intended interpretation of the object is not stored in memory.
    * For instance, can interpret an integer as an 8char sequence.
* When we create an object in Ruby, it allocates some memory. Variables
  store **pointers** which are addresses in memory.
* A memory cell does not know its own address; the RAM controller
  assigns it.

## Bonus: CPU Instructions in Memory

* CPU instructions are themselves stored in memory. Each cell contains
  a CPU instruction.
* The CPU executes instructions one-by-one.
* Some instructions like `JZ` (jump if zero) can conditionally jump to
  other memory cells, which is how branching happens.
