require 'pry'

class SinglyLinkedList
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def insertAfter(node, new_node)
    # adds the new_node after node
    new_node.next = node.next
    node.next = new_node
    self
  end

  def prepend(value)
    #prepend to the beginning
    node = Node.new(value)
    node.next = @head if @head
    @head = node
    self
  end

  def append(value)
    # append to the end
    node = Node.new(value)
    if @head
      self.last.next = node
    else
      @head = node
    end
    self
  end

  def remove
    # removes the first node
    node = @head
    @head = node.next rescue nil
    node
  end

  def last
    # returns the last node
    node = @head
    while node.next
      node = node.next
    end
    node
  end

  # Recursive last method -- Optional
  # def last_r

  # end

  def length
    # calculates the length of the list
    count = @head ? 1 : 0
    if @head
      node = @head
      while node.next
        count += 1
        node = node.next
      end
    end
    count
  end

  def find(input)
    # returns the node with that value or nil if none found
    node = @head
    while node.next && node.to_s != input
      node = node.next
    end
    node if node.to_s == input
  end

  def reverse
    # returns a new SinglyLinkedList with all elements reversed
    list = SinglyLinkedList.new()
    node = @head
    list.prepend(node)
    while node.next
      node = node.next
      list.prepend(node)
    end
    list
  end

  def reverse!
    last = nil
    node = @head

    while node.next
      prior = node.next
      node.next = last
      last = node
      node = prior
    end
    node.next = last
    @head = node
  end

  def to_s
    node = @head
    while node.next
      puts node.to_s
      node = node.next
    end
    puts node.to_s
  end


  class Node
    attr_accessor :value, :next

    def initialize(value=nil)
      @value = value
      @next = nil
    end

    def to_s
      @value || nil
    end
  end

end



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