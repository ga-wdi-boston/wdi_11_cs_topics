require 'pry'

class BinaryTree
  attr_accessor :value, :left_branch, :right_branch

  def initialize(value)
    @value = value
  end

  def insert(value)
    if value < @value
      if @left_branch
        @left_branch.insert(value)
      else
        @left_branch = BinaryTree.new(value)
      end
    elsif value > @value
      if @right_branch
        @right_branch.insert(value)
      else
        @right_branch = BinaryTree.new(value)
      end
    else
      puts "aaaaah!! it's equal!!"
    end
  end

  def destroy(value)
    if node = find(value)
      destroy_node(node)
    end
  end

  def destroy_node(node)
    destroy_node(node.left_branch) unless node.left_branch.nil?
    destroy_node(node.right_branch) unless node.right_branch.nil?
    node.value = node.left_branch = node.right_branch = nil
  end

  def find(value)
    if value < @value
      return @left_branch.find(value) if @left_branch
    elsif value > @value
      return @right_branch.find(value) if @right_branch
    elsif value == @value
      return self
    else
      return nil
    end
  end

  def to_s
    "#{@left_branch} << #{@value} >> #{@right_branch}"
  end

end


tree = BinaryTree.new('k')
tree.insert('r')
tree.insert('d')
tree.insert('b')
tree.insert('p')
tree.insert('x')
tree.insert('v')
tree.insert('f')

tree.find('p')
tree.find('f')

binding.pry