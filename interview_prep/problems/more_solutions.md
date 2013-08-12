0. Given an array, move all zeros to the end. The order of non-zero elements does not matter. Algorithm should be O(n) Ex:

  ```
  move_zeros([1,2,0,3,4,0,5,6,0]) == [1,2,6,3,4,5,0,0,0]
  ```

  **Solution:**

  ```ruby
    def move_zeros(array)
      # maintain two indicies
      # one starts at the beginning
      # one starts at the end
      # increment start index until a zero value is found
      # decrement end index until non zero value is found
      # swap values at start and end indecies
      # continue, ending when start index > end index

      start = 0
      end = array.length -1

      while true
        until array[start] == 0
          start += 1
        end

        until array[end] != 0
          end -= 1
        end

        if start >= end
          break
        end

        array[start], array[end] = array[end], array[start]
      end
    end
  ```

0. Implement the 'look and say' function. 'Look and say' takes an input array and outputs an array that describes the count of the elements in the input array as they appear in order. Ex:

  ```
  look_and_say([1]) == [1,1] # there is one '1' in the input array
  look_and_say([1,1]) == [2,1] # there are two '1's in the input array
  look_and_say([2,1]) == [1,2,1,1] # there is one '2', followed by one '1' in the input array
  look_and_say([1,2,1,1]) == [1,1,1,2,2,1] # is one '1', followed by one '2', followed by 2 '1's in the input array
  ```

  **Solution:**

  ```ruby
    def look_and_say(array)
      # maintain a current count
      # maintain a current element
      # push both onto new array when a different element is detected

      cur_el = array[0]
      cur_count = 0

      output = []

      array.each do |el|
        if el == cur_el
          cur_count += 1
        else
          output << cur_count
          output << cur_el

          cur_el = el
          cur_count = 1
        end
      end

      # push the last set

      output << cur_count
      output << cur_el

      output
    end
  ```

0. Given an input stream of numbers, implement a function that would return a single number from the stream with an equal chance probability of being selected when compared with all other numbers in the stream. So, if the stream were 10 in size, any given number should have a 1 in 10 chance of being returned. Implement this in O(1) memory space (yes, constant memory).

  **Solution:**

  ```ruby
    # The trick here is a bit of math. Consider:

    # If we had just one element in the stream, which would we return? 
    # A: The single element we have.

    # If we now had two elements, which would we return? 
    # A: We could either return the one we stored from the previous iteration, 
    # or we can return the new element.

    # How do we pick? We could just flip a coin. Probability that we replace 
    # the number we had with the new number is 50%. Probability that we don't is also 50%.
    # So, whatever number we store has an equal chance of being stored.
    # If we simply return that number, we are returning that number with a 50% chance.

    # This also works as the stream gets larger. Prove to yourself that it does.

    def random(stream)
      # stream is an ambiguous data type that. We assume we can iterate over it.

      number_stored = nil
      numbers_seen_so_far = 0

      stream.each do |el|
        numbers_sees_so_far += 1

        if Random.rand(numbers_seen_so_far) == 0
          number_stored = el
        end
      end

      number_stored
    end
  ```

0. Given an input stream of numbers, implement a function that would return the median of all numbers seen so far. Total runtime should be O(n log n). Determining the median should be a O(1) operation. Memory usage can be O(n).

  **Solution:**

  ```
  # The solution is to maintain two heaps, a min heap and a max heap.
  # The min heap represents all numbers larger than the current median.
  # The max heap represents all numbers smaler than the current median.

  # When a new number comes in, add it to either the min heap or the max
  # heap appropriately. When the heaps differ is size, pop from one and
  # push onto the other.

  # Pushes and pops are on the order of O(log n). For n elements, the
  # total computational time is on the order O(n log n).
  ```

0. Given two *sorted* arrays, find the median element amongst the two arrays. That is, if both arrays were combined, find the median element from the combined array. Assume that there is not enough memory to actually combine both arrays. Hint: there is an O(log n + log m) solution.

  **Solution:**

  ```
  # Since they are sorted, you can find the middle element of each to find
  # the medians of each list. The actual median is now somewhere in between
  # these two numbers. You can then discard the non-relevant portions of
  # each list. Repeat the process. When the middle elements from both lists
  # converge, you have now found the median element.
  ```

0. Given a node in a Binary Search Tree, find the node with the next largest value. Assume you don't have the root of the tree, just a single node from it.

  **Solution:**

  ```ruby
    # Perform an in-order traversal

    def next(node)
      if node.right # If the node has a right child, return the left most node 
                    # in the right child
        left_most_node(node.right)
      elsif node = node.parent.left  # If the node is a left child, return the parent
        node.parent
      else # move up the parent until parent is a left child. then, return parent's parent
        current_node = node
        until current_node = current_node.parent.left
          current_node = current_node.parent
        end

        current_node.parent
      end
    end

    def left_most_node(node)
      current_node = node
      while current_node.left
        current_node = current_node.left
      end

      current_node
    end
  ```

0. Given two singly-linked lists of (potentially) differing lengths that converge at some point, find the node at which they converge.

  **Solution:**

  ```
  # Imagine two runners, running at the same speed across the linked lists.
  # If one list is longer than the other, that list's runner will reach
  # the end first. The distance between the two runners is the difference
  # in length between the two lists. Knowing this, we can traverse the
  # longer list first, moving through it an amount equivalent to the
  # difference in distance between the two lists. Then, travesing both
  # lists at equal speed will result in the two runners colliding at the 
  # intersection point.
  ```

0. Implement a stack with a 'bonus' method that returns the maximum value of the stack. The `max` method should take O(1) time.

  **Solution:**

  ```ruby
    # Each node in the stack maintains a reference to the largest
    # node in the stack at the time it was pushed in. To determine
    # the largest node, we only need to look at the head of the
    # stack.

    class Node
      attr_reader :value
      attr_accessor :max, next

      def initialize(value)
        @value = value
        @next, @max = nil
      end
    end

    class MaxStack
      def initialize
        @head = nil
      end

      def push(value)
        n = Node.new(value)

        if @head && n.max < @head.max
          n.max = @head.max
        else
          n.max = n
        end

        n.next = @head
        @head = n
      end

      def pop
        n = @head
        @head = @head.next

        n.value
      end

      def max
        @head.max.value
      end
    end
  ```

0. Consider the following:

  ```javascript
    // First case:
    var yell = function(message) {
      setTimeout(function() {
        alert(message);
      }, 500);
    };

    m = "foo";
    yell(m);
    m = "bar";

    // Second case:
    var yell = function(message) {
      setTimeout(function() {
        alert(message.body);
      }, 500);
    };

    m = {};
    m.body = "foo";
    yell(m);
    m.body = "bar";
  ```

  What will the alert message be in each case?

  **Solution:**

  ```
  "foo" in the first case.
  "bar" in the second.
  ```

0. Given a set of disjointed intervals and an additional interval, write a method that would merge the additional interval into the set. Ex:

  ```
  set = [[0, 1], [4, 6], [8, 10]]

  merge(set, [2, 3]) == [[0,1], [2, 3], [4, 6], [8, 10]]
  merge(set, [1, 4]) == [[0, 6], [8, 10]]
  merge(set, [5, 12]) == [[0, 2], [4, 12]]
  ```

  **Solution:**

  ```
  # Implement using an interval tree
  ```

0. Design Google's look-ahead search. What kind of datastructures would you use? What would be the computational time to build this datastructure? The memory space? The lookup time?

  **Solution:**

  ```
  # Use tries for the look ahead part, and a min heap value for each key in the trie to determine the top rankings.
  ```

0. Implement an LRU cache.

0. Given an array, return an index with a probability weighted by the value at that index. For example, for the array `[4,6,8]`, index 0 should be returned with 4 in 18 odds, index 1 should be returned with 6 in 18 odds, and index 2 should be return with 8 in 18 odds. Implement this with an O(n) time.

  **Solution:**
  ```ruby
    def weighted_random_index(arr)
      sum, cumulative_sum = arr.inject(:+), 0
      random = rand * sum

      arr.each_with_index do |el, i|
        cumulative_sum += el
        return i if cumulative_sum >= random
      end
    end
  ```
0. Given a string, determine the longest substring with only two unique characters. Ex:

  ```
  longest_substring("abdfkssssjjjeiee") == "ssssjjj"
  ```

0. Given a list of numbers in an array, replace all the numbers with the product of all other numbers. Do this in O(n) time without using division.

  **Solution:**
  ```ruby
     def productify(arr)
       left_arr, right_arr = Array.new(arr.size, arr[0]), Array.new(arr.size, arr[-1])
       results = Array.new(arr.size)

       # Build two arrays, where each term is the product of the previous terms in arr,
       # one starting from the left, the other from the right
       (1...arr.size).each do |i|
         left_arr[i] = arr[i] * left_arr[i-1]
         right_arr[-(i+1)] = arr[-(i+1)] * right_arr[-i]
       end

       # Assign values for result edge cases
       results[0], results [-1] = right_arr[1], left_arr[-2]
  
       # Multiply left and right terms to determine result
       (1...(arr.size-1)).each do |i|
         results[i] = left_arr[i-1]*right_arr[i+1]
       end
  
       results
     end
  ```
