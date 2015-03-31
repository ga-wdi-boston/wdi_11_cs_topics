# General Assembly Computer Science

![XKCD 835](http://imgs.xkcd.com/comics/tree.png)

[From XKCD 835](http://xkcd.com/835/)

## Instructions

Tables will be set up by topic around the room. You will eventually visit all tables. You're working in groups, but your progress is self-paced. Start at either the Stack, Queue or Linked List tables. Work with others to complete all tasks for the topics of that table.

### How to use instructors for these exercises


## Topics

### Binary

1. Watch [Harvard CS50's video on binary](https://www.youtube.com/watch?v=hacBFrgtQjQ)
2. Read about [binary from Harvard's CS50](https://study.cs50.net/binary), and the [Wikipedia on binary numbers](http://en.wikipedia.org/wiki/Binary_number).
3. In your notes, represent the base10 numbers 0-10 in binary.
4. In your notes, practice basic addition using binary to add small numbers together.
5. In your notes, write when you might use binary and why is it still useful.
6. Following the tests we have provided, write a Ruby method that will convert a string of binary to the base-10 decimal system *without* using built-in conversion methods.

### Asymptotic Notation / Big-O

- Watch [Harvard CS50's video on asymtotic notation](https://www.youtube.com/watch?v=iOq5kSKqeR4)
- Read about and complete quizzes on [Asymptotic / Big-O notation on Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/asymptotic-notation), and then skim over the [Wikipedia article on Big-O notation](http://en.wikipedia.org/wiki/Big_O_notation). The wikipedia article is a bit dense, so don't get too hung up there.
- In your notes, draw graphs representing O(1), O(n^2), O(n), O(n log n), O(log n), O(!n) and list them in order of complexity from fastest to slowest.
- What is the Big-O of determining if a number is odd or even?
- What is the Big-O of linearly searching through an unordered list for an item?
- Why don't we just measure computation in how long it takes for a processor to calculate something?
- Computers are fast; why do we care about how long something takes? Can't we just add another computer or faster processor? When might this not work?

### Array

1. Watch [Harvard CS50's video on arrays](https://www.youtube.com/watch?v=7mOJN1c1JEo)
2. Read about [arrays from Harvard's CS50](https://study.cs50.net/arrays), and the [Wikipedia on Array data structures](http://en.wikipedia.org/wiki/Array_data_structure).
3. In your notes, diagram an array and its common operations.
4. In your notes, for each common array operation write its worst-case time-complexity (Big-O).
5. In your notes, describe when you might use an array and why they are useful.
6. In your notes, describe the difference between an array and a dynamic array.

### Associative Array / Hash Tables

1. Watch [Harvard CS50's video on hash tables](https://www.youtube.com/watch?v=h2d9b_nEzoA).
2. Read about [hash tables from Harvard's CS50](https://study.cs50.net/hashtables), and the [Wikipedia on associative arrays](http://en.wikipedia.org/wiki/Associative_array) and [hash tables](http://en.wikipedia.org/wiki/Hash_table).
3. In your notes, diagram a hash table and its common operations.
4. What other basic data structures might you use to implement a hash table?
5. Under `hash_hookup/hash_implementation.rb` there is an implementation of a hash table in Ruby. Step through this file using `pry`, and comment every line. How is this hash table working? Write a paragraph describing its use of bins.
7. Why does a hash table have faster lookup time than an array, even though it might use several arrays in its implementation
8. Above each hash table operation, write its worst-case time-complexity (Big-O) as a comment.
9. In your notes, write when you might use a hash table and why they are useful.
10. What is the difference between a hash table and Ruby's Hash class?

### Struct

1. Watch [Harvard CS50's video on structs](https://www.youtube.com/watch?v=EzRwP7NV0LM)
2. Read about [The Ruby Struct Class from Stephanie Oh](http://stephaniehoh.github.io/blog/2013/12/28/the-ruby-struct-class/), and the [Core Ruby Docs on the Struct class](http://ruby-doc.org/core-2.2.0/Struct.html).
3. In your notes, diagram a struct and its common operations.
4. In your notes, write when you might use a struct and why they are useful.
5. In your notes, write the difference between a struct and a class.
6. In pry try out making an instance of a Struct.

### Set

1. Watch [Computer Science for Everyone's video on sets](https://www.youtube.com/watch?v=yRP1ppn6dEA)
2. Read about the [Core Ruby Docs on the Set class](http://ruby-doc.org/stdlib-2.2.1/libdoc/set/rdoc/Set.html).
3. In your notes, diagram a set and its common operations.
4. In your notes, write when you might use a set and why they are useful.
5. In your notes, write the difference between a set and an array.

### Queue

1. Watch [Harvard CS50's video on queues](https://www.youtube.com/watch?v=SLOrrO7DlYo).
2. Read about [queues on the wikipedia](http://en.wikipedia.org/wiki/Queue_(abstract_data_type)).
3. In your notes, diagram a queue and its common operations.
4. Implement a queue in Ruby, using the tests we have provided as a guide..
5. Above each queue operation, write its worst-case time-complexity (Big-O) as a comment.
6. In your notes, record when you might use a queue and why they are useful. Could it be implemented using a either single array or a singly linked list?

### Stack

1. Watch [Computer Science for Everyone video on stacks](https://www.youtube.com/watch?v=EEjRQ03jOMk)
2. Read about [stacks from Harvard CS50](https://study.cs50.net/stacks) and [stacks on the wikipedia](http://en.wikipedia.org/wiki/Stack_(abstract_data_type))
3. In your notes, diagram a stack and its common operations
4. Implement a stack in Ruby, using the tests we have provided as a guide.
5. Above each stack operation, write its worst-case time-complexity (Big-O) as a comment
6. In your notes, record when you might use a stack and why they are useful. Could it be implemented using a either single array or a singly linked list?

### Singly Linked List

1. Watch [Harvard CS50's video on singly linked lists](https://www.youtube.com/watch?v=5nsKtQuT6E8)
2. Read about [linked lists from Harvard CS50](https://study.cs50.net/linked_lists) and [linked lists on the wikipedia](http://en.wikipedia.org/wiki/Linked_list), focusing on singly linked lists
3. In your notes, diagram a singly linked list and its common operations
4. Implement a singly linked list in Ruby, [using the tests we have provided as a guide](https://github.com/ga-wdi-boston/wdi_11_cs_topics/tree/master/linked_lists).
5. Above each singly linked list operation, write its worst-case time-complexity (Big-O) as a comment
6. In your notes, record when you might use a singly linked list and why they are useful

### Doubly Linked List

1. Watch [this video on doubly linked lists](https://www.youtube.com/watch?v=k0pjD12bzP0); ignore the C++ code parts
2. Read about [linked lists from Harvard CS50](https://study.cs50.net/linked_lists) and [linked lists on the wikipedia](http://en.wikipedia.org/wiki/Linked_list), focusing on doubly linked lists
3. In your notes, diagram a doubly linked list and its common operations
4. Implement a doubly linked list in Ruby, [using the tests we have provided as a guide](https://github.com/ga-wdi-boston/wdi_11_cs_topics/tree/master/linked_lists).
5. Above each doubly linked list operation, write its worst-case time-complexity (Big-O) as a comment
6. In your notes, record when you might use a singly linked list and why they are useful

### Regular Expression

1. Skim the Wikipedia on [Regular Expressions](http://en.wikipedia.org/wiki/Regular_expression), this article is a bit dense so there is a lot you can skip for now and come back to later.
2. Try out [Rubular](http://rubular.com/), as it will be helpful in the next exercise. Also of note is the [Core Ruby Docs on Regex](http://ruby-doc.org/core-2.2.0/Regexp.html)
2. Complete [General Assembly's Regex Lab](https://github.com/ga-wdi-boston/wdi_10_regex_lab)
3. In 20 minutes, see how far you can get in [Regex Golf](https://regex.alf.nu/).
4. In your notes, write when you should and shouldn't use regular expressions. What is the downside to regular expressions, and why don't we use them for everything?

##### Bonus Resource

- This video/talk from the O'Reilly Fluent conference on [Demystifying Regular Expression](https://www.youtube.com/watch?v=EkluES9Rvak) is really good, but nearly an hour long. Watch it on the train or another time.
- Another good talk from [RubyConf 2013 on Regex in Ruby](https://www.youtube.com/watch?v=JfwS4ibJFDw)

## Recursion

1. Read and complete the [Khan Academy on Recursion](https://www.khanacademy.org/computing/computer-science/algorithms/recursive-algorithms/a/recursion).
2. Skim the [Wikipedia article on Recursion](http://en.wikipedia.org/wiki/Recursion_(computer_science))
3. What is a `base case`?
4. What type of problems should be solved recursively?
5. What is the downside to using recusion for a problem?
6. What type of problems should not be solved recursively?
7. What are some canonical problems that use recursion to solve them?
8. What data types have common operations that are well solved recursively?

## Trees

1. Watch [Harvard CS50 on Trees](https://www.youtube.com/watch?v=mFptHjTT3l8)

### Binary Tree

1. Watch [CS for Everyone on binary trees](https://www.youtube.com/watch?v=01CMAM8KWZY)
2. Read the [Wikipedia on binary trees](http://en.wikipedia.org/wiki/Binary_tree)
3. In your notes diagram a binary tree and how insertion and search works on the tree.
4. In your notes, write down when it is useful to use a binary tree and what makes it a special type of tree
5. Following the tests we have provided, implement a binary tree class in Ruby.

### Trie

1. Watch [Harvard CS50 on Tries](https://www.youtube.com/watch?v=NKr6gWcXkIM)
2. Read the [Wikipedia on Tries](http://en.wikipedia.org/wiki/Trie)
3. In your notes diagram a trie and how insertion and search works on the trie.
4. In your notes, write down when it is useful to use a trie and how it is different than other types of trees that we've used.
5. Following the tests we have provided, implement a trie class in Ruby.

#### Bonus Exercise
-  Practice using a Trie in Rails with Alice Motolla's exercise on [Tries in Rails](https://github.com/ichthala/trie-to-complete). Note this uses Rails 3.2 and JavaScript in a Rails app.

## Sorting

### Bubble Sort

* Watch [Harvard CS50 on Bubble Sort](https://www.youtube.com/watch?v=8Kp-8OGwphY)
* Read [Harvard CS50 on Bubble Sort](https://study.cs50.net/bubble_sort) and the [Wikipedia on Bubble Sort](http://en.wikipedia.org/wiki/Bubble_sort)
* In your notes, describe in your own words how a Bubble Sort sort works and how you might describe it to someone else.
* Write out the pseudocode for the sort.
* In your notes, manually diagram how a Bubble Sort sort works over a small dataset
* Following the tests we have provided, implement a Bubble Sort sort in Ruby. Do *not* use built-in sorting methods. It is entirely possible to make the tests pass by just using the `.sort` method, but that defeats the purpose of this exercise.
* In your notes, describe when a Bubble Sort sort might be useful. Write down its worst-case complexity time for Bubble Sort sorts. How is the Bubble Sort sort different from other sorts?

### Insertion Sort

* Watch [Harvard CS50 on Insertion Sort](https://www.youtube.com/watch?v=DFG-XuyPYUQ)
* Read [Harvard CS50 on Insertion Sort](https://study.cs50.net/insertion_sort). Read and complete quizzes on [Selection Sort on Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort).
* Note the [Wikipedia on Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort) as a reference source.
* In your notes, describe in your own words how a Insertion Sort sort works and how you might describe it to someone else.
* Write out the pseudocode for the sort.
* In your notes, manually diagram how a Insertion Sort sort works over a small dataset
* Following the tests we have provided, implement a Insertion Sort sort in Ruby. Do *not* use built-in sorting methods. It is entirely possible to make the tests pass by just using the `.sort` method, but that defeats the purpose of this exercise.
* In your notes, describe when a Insertion Sort sort might be useful. Write down its worst-case complexity time for Insertion Sort sorts. How is the Insertion Sort sort different from other sorts?

### Merge Sort

* Watch [Harvard CS50 on Merge Sort](https://www.youtube.com/watch?v=EeQ8pwjQxTM)
* Read [Harvard CS50 on Merge Sort](https://study.cs50.net/merge_sort). Read and complete challenges [on Merge Sort on Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/merge-sort/a/divide-and-conquer-algorithms).
* Note the [Wikipedia on Merge Sort](http://en.wikipedia.org/wiki/Merge_sort) as reference source.
* In your notes, describe in your own words how a Merge Sort sort works and how you might describe it to someone else.
* Write out the pseudocode for the sort.
* In your notes, manually diagram how a Merge Sort sort works over a small dataset
* Following the tests we have provided, implement a Merge Sort sort in Ruby. Do *not* use built-in sorting methods. It is entirely possible to make the tests pass by just using the `.sort` method, but that defeats the purpose of this exercise.
* In your notes, describe when a Merge Sort sort might be useful. Write down its worst-case complexity time for Merge Sort sorts. How is the Merge Sort sort different from other sorts?
* What is a divide and conquer algorithm? When are they a better solution than alternatives?

### Selection Sort

* Watch [Harvard CS50 on Selection Sort](https://www.youtube.com/watch?v=f8hXR_Hvybo)
* Read [Harvard CS50 on Selection Sort](https://study.cs50.net/selection_sort). Read and complete quizzes on [Selection Sort on Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/sorting-algorithms/a/sorting).
* Note the [Wikipedia on Selection Sort](http://en.wikipedia.org/wiki/Selection_sort) as reference material.
* In your notes, describe in your own words how a Selection Sort sort works and how you might describe it to someone else.
* Write out the pseudocode for the sort.
* In your notes, manually diagram how a Selection Sort sort works over a small dataset
* Following the tests we have provided, implement a Selection Sort sort in Ruby. Do *not* use built-in sorting methods. It is entirely possible to make the tests pass by just using the `.sort` method, but that defeats the purpose of this exercise.
* In your notes, describe when a Selection Sort sort might be useful. Write down its worst-case complexity time for Selection Sort sorts. How is the Selection Sort sort different from other sorts?

### Quick Sort

* Read and complete quizzes on [Quick Sort on Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort).
* Note the [Wikipedia on Quick Sort](http://en.wikipedia.org/wiki/Quicksort) as reference material.
* In your notes, describe in your own words how a Quick Sort sort works and how you might describe it to someone else.
* Write out the pseudocode for the sort.
* In your notes, manually diagram how a Quick Sort sort works over a small dataset
* Following the tests we have provided, implement a Quick Sort sort in Ruby. Do *not* use built-in sorting methods. It is entirely possible to make the tests pass by just using the `.sort` method, but that defeats the purpose of this exercise.
* In your notes, describe when a Quick Sort sort might be useful. Write down its worst-case complexity time for Selection Sort sorts. How is the Selection Sort sort different from other sorts? When would we *not* want to use a Quick Sort?


### Linear Search

* Watch [Harvard CS50 on Linear Search](https://www.youtube.com/watch?v=CX2CYIJLwfg)
* Read [OpenMind on Linear Search](http://algorithms.openmymind.net/search/linear.html) and [Wikipedia on Linear Search](http://en.wikipedia.org/wiki/Linear_search)
* Write in your notes the worst-case Big-O for linear search.
* Write when linear search is useful and why

### Binary Search

* Watch [Harvard CS50 on Binary Search](https://www.youtube.com/watch?v=D5SrAga1pno)
* Read and follow through quizes about [Binary Search on Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/binary-search/a/binary-search)
* Note [Harvard CS50 on Binary Search](http://en.wikipedia.org/wiki/Binary_search_algorithm) and [Wikipedia on Binary Search](http://en.wikipedia.org/wiki/Binary_search_algorithm) as a reference.
* In your notes, write down the things that must be true for a binary search to work
* Write in your notes the worst-case Big-O for binary search.
* Draw a diagram of how binary search works.
* Write an analogy that you might use to describe binary search.
* Write when binary search is useful and how it is different from linear search.

## Traditional CS Challenges

- [Tower of Hanoi](https://github.com/ga-wdi-boston/wdi_challenge_hanoi_tower)
- Travelling Salesman
- Prisoner's Dilemma
- Game of Life
- Serpinski Gasket
- Fractals & Mandlebrot Sets

# WIP


## Strategies:

- Group in table sections
- homework: documenting/draw graphic representation/writing papers
- Read wiki pages
- Read/write pseudo code
- Pair program and write implementations from nothing

## Todos:

- Build out README with documentation and descriptions
- Link to CS50 videos
- 2 language implementation: javascript, ruby
- RSpec tests/Jasmine tests
- traditional cs problems: tower of hanoi, travelling salesman

