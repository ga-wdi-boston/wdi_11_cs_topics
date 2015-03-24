require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class SingleLinkedList
  attr_accessor :head, :tail

  # initializes the linked list
  def initialize(first_value=nil)
    @head = Node.new(first_value) if first_value
  end

  # adds the new_node after node
  def insert_after(node, new_node)
    new_node.next_node = node.next_node
    node.next_node = new_node
    self
  end

  #prepend to the beginning
  def prepend(value)
    node = Node.new(value)
    node.next_node = @head if @head
    @head = node
    self
  end

  # append to the end
  def append(value)
    node = Node.new(value)
    if @head
      self.last.next_node = node
    else
      @head = node
    end
    self
  end

  # removes the first node
  def shift
    node = @head
    @head = @head.next_node
    temp = node
    node = nil
    temp
  end

  # returns the last node
  def last
    node = @head
    while node.next_node
      node = node.next_node
    end
    node
  end

  # Recursive last method -- Optional
  # def last_r
  # end

  # calculates the length of the list
  def length
    count = @head ? 1 : 0
    if @head
      node = @head
      while node.next_node
        count += 1
        node = node.next_node
      end
    end
    count
  end

  # returns the node with that value or nil if none found
  def find(input)
    node = @head
    while node.next_node && node.to_s != input
      node = node.next_node
    end
    node if node.to_s == input
  end

  # returns a new SingleLinkedList with all elements reversed
  def reverse
    list = SingleLinkedList.new(self.head.value)
    node = self.head
    while node.next_node
      node = node.next_node
      list.prepend(node.value)
    end
    list
  end

  # reverses the SingleLinkedList in place
  def reverse!
    last = nil
    node = @head
    while node.next_node
      prior = node.next_node
      node.next_node = last
      last = node
      node = prior
    end
    node.next_node = last
    @head = node
  end

  # prints out the node
  def to_s
    node = @head
    while node.next_node
      puts node.to_s
      node = node.next_node
    end
    puts node.to_s
  end
end

=begin
s = SinglyLinkedList.new("a")
binding.pry
s.append("b")
s.append("c")
s.append("d")
s.append("e")
puts "STARTING LIST"
puts s.to_s


puts "prepend 0"
s.prepend("0")
puts s.to_s

puts "append f"
s.append("f")
puts s.to_s

puts "remove"
puts s.remove

puts "last"
puts s.last

puts "length"
puts s.length

puts "Find c"
puts s.find("c")

puts "reverse 1"
puts s.reverse.to_s

puts "destructive reverse"
s.reverse!
s.to_s
=end
