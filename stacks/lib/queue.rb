require 'byebug'
require 'pry'
=begin
  Make a new empty queue
  add item to the back of the queue
  look at the item at the front of the queue
  remove and retreive item from the front of the queue
  ask for the size of the queue
  ask if its empty
=end

class Node 
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

end

class MyQueue
  # your code goes here
end