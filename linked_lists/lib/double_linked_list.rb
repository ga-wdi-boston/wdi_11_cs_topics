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
  # your code goes here
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


