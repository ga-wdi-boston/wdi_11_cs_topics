require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value
    @next_node = nil
  end

  def to_s
    "#{@value}" || nil
  end
end

class SingleLinkedList
  # your code goes here
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
