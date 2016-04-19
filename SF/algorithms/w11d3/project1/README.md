## Dynamic Array

You're probably used to working with Ruby's `Array` class by now. It's
very convenient, and chock full of optimized methods. But it's a little
too magical for data structure adventurers like us, so we're going to
build Ruby's entire `Array` class from scratch.

This is getting into some serious stuff now, so don't try this at home
(and you probably won't want to use your home-spun Array class in
production; we are doing this for the sake of knowledge and discovery
only!)

Let's pull back the hood a bit.

Ruby is written in **C**. C is a very low-level language, which means
it's much closer to machine code than Ruby itself is. In Ruby, we never
have to deal with things like garbage collection or memory
management--we never have to tell Ruby "hey, I'm never going to use this
hash again, so please delete it from memory", but Ruby knows to do it
for you. This is because some machinery inside of Ruby is taking care of
all of the little details for you.

Similarly, underlying all of the flexibility and convenience of the Ruby
`Array` data structure, there is a more rigid and constraining data
structure: the C array.

C arrays are extremely simple. Each one is basically a row of buckets. C
arrays must have their memory allocated before-hand, and they never
change in size. You can jump into any bucket in that array in `O(1)`
time, and you can put anything into that bucket. And that's it. The API
is overwhelmingly simple. For our purposes, there's no `push`, no `pop`,
no `each` or `includes?`. In fact, you can't even just add a bunch of
items to the array--you have to know before-hand how many items you want
the array to ever hold, otherwise you'll get overflow errors (i.e., a
bad time).

So because Ruby is so nice, they decided to build a pretty little Ruby
object on top of C's array, but this array doesn't require you to know
how big the array will ever need to be. Instead, Ruby's arrays resize
dynamically, just like the hash maps we built. By now you know the
drill. Let's build this thing.

C arrays are not exposed to you in Ruby, so we can't work directly with
them to rebuild Ruby's dynamic array. But to simulate the exercise,
you're going to build a simple `StaticArray` class. `StaticArray` mimics a C
array (and, as you now know, contains one underneath the hood). Use this
to build your dynamic array.

Power up your dynamic array so that it uses a [ring
buffer][ring-buffer-reading]. This will allow you to shift and unshift
in O(1) time, while minimizing your space usage. The math here is
tricky; lots of modulo division and keeping track of a `@start_idx`.
But once you have this, you've got the dynamic array mastered.

Get to it. Specs await.

Write StaticArray first, then run the specs in this order:
1. dynamic_array_spec.rb
2. ring_buffer_spec.rb

[ring-buffer-reading]: https://en.wikipedia.org/wiki/Circular_buffer#How_it_works
