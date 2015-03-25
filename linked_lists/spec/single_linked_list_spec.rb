require 'spec_helper'
require 'byebug'
require 'pry'

require_relative '../lib/single_linked_list'

describe SingleLinkedList do
  let(:ll) do
    SingleLinkedList.new(00)
  end

  describe '#prepend' do
    it 'adds a node to the beginning of the list' do
      ll.prepend(10)
      ll.prepend(20)
      ll.prepend(30)
      expect(ll.head.value).to eq(30)
    end
    it 'adds the next node to the head if a head exists' do
      ll.prepend(10)
      ll.prepend(20)
      expect(ll.head.next_node.value).to eq 10
    end
  end

  describe '#append' do
    it 'adds a node to the end of the list' do
      ll.append(10)
      expect(ll.last.value).to eq(10)
    end
    it 'ensures the tail has no next_node' do
      ll.append(00)
      ll.append(10)
      ll.append(20)
      expect(ll.last.next_node).to eq nil
    end
  end

  describe '#shift' do
    before(:each) do
      ll.prepend(10)
      ll.prepend(20)
    end
    it 'removes head' do
      ll.shift
      expect(ll.head.value).to eq 10
    end
    it 'returns head that was cut off' do
      expect(ll.shift.value).to eq(20)
    end
  end

  describe '#length' do
    before(:each) do
      ll.prepend(10)
      ll.prepend(20)
      ll.prepend(30)
      ll.prepend(40)
    end
    it 'returns the number of nodes in the linked list' do
      expect(ll.length).to eq 5
    end
  end

  describe '#find' do
    let(:search_value) do
      20
    end

    before(:each) do
      ll.prepend(10)
      ll.append(20)
      ll.append(30)
    end

    it 'returns the node with the given value' do
      expect(ll.find(search_value).value).to eq search_value
    end
  end

  describe '#reverse' do
    before(:each) do
      ll.append(10)
      ll.append(20)
      ll.append(30)
      @reversed_ll = ll.reverse
    end

    it 'returns a copy of the linked list in reverse' do
      expect(@reversed_ll.head).to be_a Node
      expect(@reversed_ll.head.value).to eq 30
    end
    it 'does not alter the original list' do
      expect(ll.head.value).to eq 0
    end
  end

  describe '#reverse!' do
    before(:each) do
      ll.prepend(10)
      ll.append(20)
      ll.append(30)
      ll.reverse!
    end

    it 'alters the list in place by reversing it' do
      expect(ll.head.value).to eq 30
    end
  end

  describe '#insert_after' do

    before(:each) do
      ll.prepend(10)
      ll.append(20)
      @node = Node.new(15)
    end

    it 'splices value behind node' do
      ll.insert_after(ll.find(10), @node)
      expect(ll.head.next_node.value).to eq 15
    end
  end

end