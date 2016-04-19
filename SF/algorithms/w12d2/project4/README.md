# QuickSort

In this project, you'll be implementing __quicksort__.

## QuickSort

Start off with the not-in-place version of QuickSort. This version of QuickSort chooses a pivot and pushes elements smaller than the pivot into a left array and elements larger than the pivot into a right array. It recursively sorts these arrays, then adds them together. What is the space complexity of this edition of QuickSort? We can do better.

Let's move on to a new and improved version that sorts the array in place!

Begin by writing the logic for `Array::partition`. The `::partition` method takes in an array, a start position (this should be your pivot), and a length. It should go through all of the elements from the start position up to start + length. It should move all elements less than the pivot on its left and all elements greater than the pivot on the right thus partitioning this portion of the array. At the end of the method, it should return the pivot element's new index.

__Note:__ good implementations of QuickSort choose a random pivot to reduce the probability of pathologically bad data sets. Don't do this until you've passed all the specs - just use the first element as your pivot. The specs test that, without a randomized pivot, the partition step is called a certain number of times for a given array. Once you pass the specs and use a random pivot, note that the number of partition steps needed for the "worst case" array decrease.

Write `::sort2!` using your `::partition` method. Once you've gotten all the specs to pass, celebrate your mastery of sorting!

What are the time complexity and space complexity of your second QuickSort (don't forget the amount of space that the recursive calls take)?
