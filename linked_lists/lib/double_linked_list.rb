class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
    @prev_node = nil
  end

  def to_s
    @value || nil
  end
end

class DoubleLinkedList
  attr_accessor :head, :tail

  def initialize(value = nil)
    @head = nil
    @tail = nil
    if value
      @head = Node.new(value)
      @tail = @head
    end
    self
  end

  def append(value)
    node = Node.new(value)
    if empty?
      @head = node
    else
      node.prev_node = @tail
      @tail.next_node = node
    end
    @tail = node
    self
  end

  def prepend(value)
    node = Node.new(value)
    if empty?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head.prev_node = node
      @head = node
    end
    self
  end

  def length
    count = 0
    node = @head
    while node do
      count += 1
      node = node.next_node
    end
    count
  end

  def find(value)
    node = @head
    while node do
      return node if node.value == value
      node = node.next_node
    end
  end

  def insert_after(node, new_node)
    if node.next_node
      new_node.next_node = node.next_node
      new_node.prev_node = node
      node.next_node = new_node
    else
      node.next_node = new_node
      new_node.prev_node = node
      @tail = new_node
    end
    self
  end

  private
  def empty?
    length <= 0
  end
end

class EmptyListError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end
end

class NodeNotFoundError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end
end

=begin
begin
  raise EmptyListError.new(object), "You cannot insert_after into an empty list"
rescue EmptyListError => e
  puts e.message # => "a message"
  # puts e.object # => "an object"
end

begin
  raise NodeNotFoundError.new(object),'Node not found'
rescue NodeNotFoundError => e
  puts e.message
  # puts e.object
end

=end


