#Singly-Linked Lists

##What is it?

A singly-linked list is an ordered list of nodes. Each node has a pointer which points to the node in front of it. The first node in the list is the ‘head’, and the last node is the ‘tail’ (whose pointer points to null). Singly-linked lists use linear search (notated as `O(n)`) to find an element.

##When would I use it?

You would use a singly-linked list when you need a dynamically-sized, ordered list of data. It is particularly helpful because you can easily insert elements into the list, even the middle of it. You might want to use this if you are building an to-do (ordered) list app. Another real-life example of a singly-linked list is a [queue](http://en.wikipedia.org/wiki/Queue_(abstract_data_type)) in computer science.

##How is it different than an *array*?

Arrays are fixed in size, and all elements are indexed, whereas singly-linked lists are optimized for changes in size. It takes much longer to insert an element into an array than to insert an elemtent into a singly-linked list. Arrays also require a contiguous block of memory, whereas, linked lists can use non-sequential blocks of memory.

##How is it different than a *doubly-linked list*?

Singly-linked lists require less memory than doubly-linked lists, since nodes only have one pointer insteaad of two. However, doubly-linked lists allow you to navigate backwards and forwards, which makes it even easier to find a given element (since nodes in singly-linked lists can *only* see the nodes in front of them). Similarly, deletion is also easier in a doubly-linked list than in a singly-linked one.
