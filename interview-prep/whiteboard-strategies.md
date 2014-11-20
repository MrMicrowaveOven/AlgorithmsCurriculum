# Whiteboard Strategies

## General

**Baby Steps**    
Solve a simpler version of the problem first.    
*"Find the second biggest element in an array"* (Hint 1)    

**Proof by Induction**    
Assume you have the solution for n elements. How does that solution need to be
adjusted for n + 1 elements? Consider the ways the extra element impacts your
assumed solution. This approach is especially useful when your input is an
enumerable (eg. an array) and the solution has to compute the entire input.    
*"Largest possible subsum: given an array of integers, find the subarray whose
elements sum to the greatest value."* (Hint 2)

**Think Twice**    
Do something twice.    
*"Reverse the words in a sentence while maintaining the order of the characters
in those words."* (Hint 3)   
*"Find if the characters in a string B are the same order as those in another
string A given a wraparound."* (Hint 4)    

**Two Fingers**    
Keep two pointers inside the same iteration.    
*"Reverse a string"* (Hint 5)    
*"Find if a linked list has a loop."* (Hint 6)    

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
element in its store."* (Hint 7)    

**The Walk and Map**    
Organize elements into a hash as you iterate over them.    
*"Find all number pairs in an array that sum to 0"* (Hint 8)    

**Righty-Tighty**    
Sort the input when dealing with ordered values.    
*"Get the k biggest elements in an array."* (Hint 9)    

**Dynamic Programming**    
Knowing [this concept][dynamic-p] won't help you solve problems directly, but
it's a good buzzword to have.

[dynamic-p]: http://en.wikipedia.org/wiki/Dynamic_programming

**The Beautiful Mind**    
Change your input arithmetically.    
*"In an array of unique integers between 1 and n where one element occurs
k times, find the repeat."* (Hint 10)    

**Window Scan**    
When you need to consider windows within an array (all continuous subsequences
of a fixed length), use a queue to implement the window. As you scan through
the array, pop scanned elements out of the queue on one end and push new ones
in at the other.    
*"Given an array and a window length, find the window
containing the elements with the greatest sum."* (Hint 11)

## To Improve Space Efficiency

**In Place**    
A solution is considered O(1) space if it only requires a constant amount of
space in addition to the size of the input. This works great when you are allowed
to modify the input value.    
*"Reverse a singly-linked list."* (Hint 12)    

**Try the Trie**    
If the elements in your input share prefixes of any length, use a [trie][trie-wiki].    
*"How would you efficiently store a billion phone numbers?"* (Hint 13)    

[trie-wiki]: http://en.wikipedia.org/wiki/Trie


## Hints
1. Start with the first biggest element in an array.    
2. Reverse the whole string, then reverse each word.    
3. For an input array A, assume you have the max subarray MSub, as well as the
biggest subarray that includes the last element inside A, called LSub. Now append
a new element E. Is LSub + E greater than LSub? If it is, is LSub + E greater than MSub?   
4. Append the input string to itself. The needle will be a substring of the result.    
5. Have pointers on either end converge toward the middle.    
6. Make two pointers travel down the list a different speeds.    
7. Push all new max elements into a stack that tracks the order of max elements.    
8. Make a hash. Walk through the array once. At every step, look up the inverse
of the current number inside your hash. Then add that number to your hash.    
9. Sort the array and get the k last elements. (Yield n * log(n) performance.    
Using a heap to track the k biggest elements is n * log(k), which is necessarily
faster.)    
10. Sum the array. The repeat is the difference between n * (n + 1) / 2 and that
sum, divided by k.    
(See [How to sum integers from 1 to N][how-to-sum].)    
11. Push and pop the elements out of a queue that represents the window. Keep track
of the queue's sum by subtracting the popped element and adding the
pushed element each time.
12. Walk down the list with a three-node window: front, middle, and back. At every
step, make the middle node point to the back node. Move on toward the front.    
13. Keep them all in a trie since phone numbers cluster around area codes,
central office codes, and subscriber numbers.    

[how-to-sum]: http://www.wikihow.com/Sum-the-Integers-from-1-to-N
