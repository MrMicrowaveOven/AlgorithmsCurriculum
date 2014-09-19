# Whiteboard Strategies

Familiarize yourself with these. They will come in handy.

## General

**Baby Steps**    
Solve a simpler version of the problem first.    
*"Find the second biggest element in an array"*    
=> Start with the first biggest element in an array.    

**Be Nice, Think Twice**    
Do something twice.    
*"Reverse the words in a sentence while maintaining the order of the characters in those words."*    
=> Reverse the whole string, then reverse each word.    
*"Find if the characters in a string B are the same order as those in another string A given a wraparound."*    
=> Append the input string to itself. The needle will be a substring of the result.    

**Two Fingers**    
Keep two pointers inside the same iteration.    
*"Reverse a string"*    
=> Have pointers on either end converge toward the middle.    
*"Find if a linked list has a loop."*    
=> Make two pointers travel down the list a different speeds.    

**Backwards Logic**    
*See the [Greedy Pirates][greedy-pirates] problem*    

[greedy-pirates]: http://www.techinterview.org/post/526325766/pirates

**Binary Logic**    
*See the [Bad King][bad-king] problem*    

[bad-king]: http://www.techinterview.org/post/526313890/bad-king


## To Improve Time Complexity

**Faster, Stronger**    
Sacrifice space for time with a data structure like a stack or a heap (also see Walk and Map).    
*"Implement a stack class with a #max_value method that returns the biggest element in its store."*    
=> Push all new max elements into a stack that tracks the order of max elements.    

**The Walk and Map**    
Organize elements into as hash as you iterate over them.    
*"Find all number pairs in an array that sum to 0"*    
=> Make a hash. Walk through the array once. At every step, look up the inverse
of the current number inside your hash. Then add that number to your hash.    

**Righty-Tighty**    
Sort the input when dealing with ordered values.    
*"Get the k biggest elements in an array."*    
=> Sort the array and get the k last elements. (Yields n * log(n) performance.    
Note that using a heap to track the k biggest elements is n * log(k), therefore necessarily
faster.)    

**Dynamic Programming**    
Divide the problem into smaller but equal subproblems that overlap.    
*See the [Max Subsum][max-subsum] problem.*    

[max-subsum]: pairboarding/questions/08B.md

**The Beautiful Mind**    
Change your input arithmetically.    
*"In an array of unique integers between 1 and n where one element occurs
k times, find the repeat."*    
=> Sum the array. The repeat is the difference between n * (n + 1) / 2 and that
sum, divded by k.    
(See [How to sum integers from 1 to N][how-to-sum].)    

[how-to-sum]: http://www.wikihow.com/Sum-the-Integers-from-1-to-N


## To Improve Space Efficiency

**In Place**    
A solution is considered O(1) space if it only requires a constant amount of
space in addition to the size of the input. This works great when you are allowed
to modify the input value.    
*"Reverse a singly-linked list."*    
=> Walk down the list with a three-node window: front, middle, and back. At every
step, make the middle node point to the back node. Move on toward the front.    

**Try the Trie**    
If the elements in your input share prefixes of any length, use a trie.    
*"How would you efficiently store a billion phone numbers?"*    
=> Keep them all in a trie since phone numbers cluster around area codes,
central office codes, and subscriber numbers.    

