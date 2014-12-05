# Hash Table!

## What is it?

- it is an "associative array"
- it's a structure that maps keys to values using hash functions
- a hash table would resemble a hash in ruby or an object in js

e.g.:

    {
      "rebecca": {
        "age": 24,
        "eye_color": "brown"
      },
      "cenk": {
        "age": 22,
        "eye_color": "brown"
      }
    }

- in actual execution, the hash table works differently.
- it uses a hashing function to build its keys in memory
- a hashing function:
  - takes an input
  - returns a psuedorandom result that is always the same given the same input
- an algorithm for storing a value in an array uses the hashing function
  1. computes the hash given a particular key
  2. computes an index for that hash associated with that key using the size of its array
  3. stores the value of the key in the associate array at the computed index
- the associative array is an array of arrays
  - each array within the array is called a "bucket"
  - each bucket holds ideally zero or one entries
  - however, in some cases, there can be two or three, which will cause a hash collision

## When would I use it?

- the hash table is best used to associate pieces of information with other matching pieces of information
- it also has a huge speed advantage
  - in searching, O(n) in the worst case and O(1) in the best case, generally the latter
  - same for insertion and deletion

## How different than similar?

- hash table sets itself apart by being speedy, and reliable
- access, creation, updating, deletion is faster than other data structures
  - good for CRUD operations