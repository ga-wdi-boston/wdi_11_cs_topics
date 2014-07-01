class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class Stack
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def push
    # pushes a node into the stack
    node = Node.new(value)
    node.next_node = @head.new_node
    @head = node
  end

  def pop
    # pops the node from the stack
    node = @head
    @head = node.next_node
    node
  end

end