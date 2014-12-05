# Binary Tree

### What is it?
Is a tree data structure in which each node has at most two children, referred to as the ﻿left child and the right child. Right and left child is determined based on a comparison to the parent node, where the left child is typically less than the parent and the right child is greater than the parent.
'''
Example:                              F  (root node)
                                     / \
                                    E   L
                                       / \
                                      J   O'''

### When would we use it?
When a linear data structure is too slow, implies we need traverse the data constantly and frequently. Also when insertion speed in a b-tree structure is too slow. An example is where we have a list of web site addresses that we need to compare and we can store each letter of the web site address as a leaf in the tree.

### How is it different from a b-tree?
Parent nodes in binary trees have at most two children, whereas a parent node in a b-tree can have multiple children. Traversing a b-tree is always faster, but insertion in a b-tree is always slower than in a binary tree. A binary tree is much more efficient for insert and look-up, i.e. dictionary problems. A binary tree stores one key and has up to two children; b-tree nodes have n keys and n+ 1 children, where n can often be very large. This shortens the tree (in terms of height) and requires much less disk space.
