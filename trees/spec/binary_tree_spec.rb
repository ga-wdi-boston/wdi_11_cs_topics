require 'spec_helper'
require 'byebug'
require 'pry'

require_relative '../lib/binary_tree'

describe BinaryTree do

  let(:bt) do
    Proc.new { |value| bt = BinaryTree.new(value) }
  end

  # to implement:

  # let(:tree) do
  #   bt.call(00)
  # end

  # where tree is your local variable

  describe '.new' do
    let(:tree) do
      bt.call(50)
    end

    it 'creates a new Binary Tree' do
      expect(tree.value).to eq 50
    end
  end

  describe '#insert' do

    let(:tree) do
      bt.call(50)
    end

    before(:each) do
      tree.insert(40)
      tree.insert(60)
      tree.insert(49)
      tree.insert(48)
      tree.insert(51)
      tree.insert(39)
    end

    it 'inserts a new node' do
      expect(tree.left_branch.value).to eq 40
      expect(tree.left_branch.right_branch.value).to eq 49
      expect(tree.right_branch.value).to eq 60
      expect(tree.left_branch.right_branch.left_branch.value).to eq 48
      expect(tree.left_branch.left_branch.value).to eq 39
    end
  end

  describe '#destroy' do

    let(:tree) do
      bt.call(50)
    end

    before(:each) do
      tree.insert(40)
      tree.insert(50)
    end

    it 'destroys the node' do
      expect(tree.destroy(50)).to be_nil
    end
  end

  describe '#find' do
    let(:tree) do
      bt.call(50)
    end
    before(:each) do
      tree.insert(40)
      tree.insert(50)
    end

    it 'returns the matching leaf' do
      expect(tree.find(50).value).to eq 50
    end
  end
end



