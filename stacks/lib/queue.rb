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

  attr_accessor :head, :tail

  def initialize(first_value = nil)
    node = Node.new(first_value) if first_value
    @head = node
    @tail = node
  end

  def push(value)
    node = Node.new(value)
    if empty?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def pop
    node = @head
    @head = node.next_node
    node
  end

  def peek
    @head.value
  end

  def empty?
    @head.nil?
  end
  
end