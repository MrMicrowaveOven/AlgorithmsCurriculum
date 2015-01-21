# Whiteboard Strategies

*Hints are at the bottom.*

## General

**Baby Steps**    
Solve a simpler version of the problem first.    
*"Find the second biggest element in an array"* (Hint 1)    

**Think Twice**    
Do something twice.    
*"Reverse the words in a sentence while maintaining the order of the characters
in those words."* (Hint 2)   
*"Find out if the characters in a string B would be the same characters and in
the same order as the characters in another string A assuming that the
characters in string B wrap around."* (Hint 3)    

**Proof by Induction**    
Assume you have the solution for n elements. How does that solution need to be
adjusted for n + 1 elements? Consider the ways the extra element impacts your
assumed solution. This approach is especially efficient when your input is an
enumerable (eg. an array) and the solution has to compute the entire input.    
*"Subsets: given an array A, return an array containing all the arrays of A's
subsets."* (Hint 4)   
*"Ways to sum N: given an integer N, return all the arrays of integers that sum
to N."* (Hint 5)   
*"Largest possible subsum: given an array of integers, find the subarray whose
elements sum to the greatest value."* (Hint 6)

**Two Fingers**    
Keep two pointers inside the same iteration.    
*"Reverse a string"* (Hint 7)    
*"Find if a linked list has a loop."* (Hint 8)    

**Backwards Logic**    
*See the [Greedy Pirates][greedy-pirates] problem*    

[greedy-pirates]: http://www.techinterview.org/post/526325766/pirates

**Binary Logic**    
*See the [Bad King][bad-king] problem*    

[bad-king]: http://www.techinterview.org/post/526313890/bad-king


## To Improve Time Complexity

**Faster, Stronger**    
Sacrifice space for time with a data structure like a stack or a heap (also see
Walk and Map).    
*"Implement a stack class with a #max_value method that returns the biggest
element in its store."* (Hint 9)    

**The Walk and Map**    
Organize elements into a hash as you iterate over them.    
*"Find all number pairs in an array that sum to 0"* (Hint 10)    

**Righty-Tighty**    
Sort the input when dealing with ordered values.    
*"Get the k biggest elements in an array."* (Hint 11)    

**Dynamic Programming**    
Knowing [this concept][dynamic-p] won't help you solve problems directly, but
it's a good buzzword to have.

[dynamic-p]: http://en.wikipedia.org/wiki/Dynamic_programming

**The Beautiful Mind**    
Change your input arithmetically.    
*"In an array of unique integers between 1 and n where one element occurs
k times, find the repeat."* (Hint 12)    

**Window Scan**    
When you need to consider windows within an array (all continuous subsequences
of a fixed length), use a queue to implement the window. As you scan through
the array, pop scanned elements out of the queue on one end and push new ones
in at the other.    
*"Given an array and a window length, find the window
containing the elements with the greatest sum."* (Hint 13)

## To Improve Space Efficiency

**In Place**    
A solution is considered O(1) space if it only requires a constant amount of
space in addition to the size of the input. This works great when you are allowed
to modify the input value.    
*"Reverse a singly-linked list."* (Hint 14)    

**Try the Trie**    
If the elements in your input share prefixes of any length, use a [trie][trie-wiki].    
*"How would you efficiently store a billion phone numbers?"* (Hint 15)    

[trie-wiki]: http://en.wikipedia.org/wiki/Trie


## Hints
1. Start with the first biggest element in an array.    
2. Reverse the whole string, then reverse each word.    
3. Append the input string to itself. Strings A and B will be substrings of the result.    
4. For an array A, assume you have the solution as the arrays `[Ao..Ak]`. Finding
the solution for `A + [el]` is a matter of adding `el` to each array in
`[Ao..Ak]` and combining that array with the [Ao..Ak] that you had originally.
5. For an input number N, assume you have the solution as the arrays `[Ao..Ak]`.
Finding the solution for N + 1 is now a matter of mapping `[Ao..Ak]` to the set of
arrays whose sum is N + 1.   
6. For an input array A, assume you have the max subarray MSub, as well as the
biggest subarray that includes the last element inside A, called LSub. Now append
a new element E. Is LSub + E greater than LSub? If it is, is LSub + E greater
than MSub?   
7. Have pointers on either end converge toward the middle.    
8. Make two pointers travel down the list a different speeds.    
9. Push all new max elements into a stack that tracks the order of max elements.    
10. Make a hash. Walk through the array once. At every step, look up the inverse
of the current number inside your hash. Then add that number to your hash.    
11. Sort the array and get the k last elements. (Yield n * log(n) performance.    
Using a heap to track the k biggest elements is n * log(k), which is necessarily
faster.)    
12. Sum the array. The repeat is the difference between n * (n + 1) / 2 and that
sum, divided by k.    
(See [How to sum integers from 1 to N][how-to-sum].)    
13. Push and pop the elements out of a queue that represents the window. Keep track
of the queue's sum by subtracting the popped element and adding the
pushed element each time.
14. Walk down the list with a three-node window: front, middle, and back. At every
step, make the middle node point to the back node. Move on toward the front.    
15. Keep them all in a trie since phone numbers cluster around area codes,
central office codes, and subscriber numbers.    

[how-to-sum]: http://www.wikihow.com/Sum-the-Integers-from-1-to-N
