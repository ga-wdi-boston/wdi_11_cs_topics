require 'spec_helper'
require 'byebug'
require 'pry'

require_relative '../lib/double_linked_list'

describe DoubleLinkedList do

  let(:dll) do
    Proc.new { |value| DoubleLinkedList.new(value) }
  end

  let(:empty_dll) do
    dll.call(nil)
  end

  describe '#prepend' do
    context 'when list is empty' do
      before(:each) do
        empty_dll.prepend(00)
      end
      it 'adds the first node' do
        expect(empty_dll.head.value).to eq 00
      end
      it 'sets the head to be the tail' do
        expect(empty_dll.head).to eq empty_dll.tail
      end
    end

    context 'when list is not empty' do
      let(:filled_dll) do
        dll.call(00)
      end
      before(:each) do
        filled_dll.prepend(10)
      end
      it 'adds a node to the beginning of the list' do
        expect(filled_dll.head.value).to eq 10
      end
    end

    context 'when there is only 1 node' do
      let(:filled_dll) do
        dll.call(00)
      end
      before(:each) do
        filled_dll.prepend(10)
      end
      it 'prepends a head, and makes the head the tail' do
        expect(filled_dll.tail.value).to eq 00
        expect(filled_dll.head.value).to eq 10
      end
    end
  end

  describe '#append' do
    context 'when list is empty' do
      before(:each) do
        empty_dll.append(20)
      end
      it 'adds the node to the list' do
        expect(empty_dll.tail.value).to eq 20
      end
      it 'sets the head to be the tail' do
        expect(empty_dll.head).to eq empty_dll.tail
      end
    end

    context 'when list is not empty' do
      let(:filled_dll) do
        dll.call(00)
      end
      before(:each) do
        filled_dll.append(10)
        filled_dll.append(20)
      end
      it 'adds the node to the end of the list' do
        expect(filled_dll.tail.value).to eq 20
      end
      it 'does not affect the head of the list' do
        expect(filled_dll.head.value).to eq 00
      end
    end
  end

  describe '#length' do
    context 'when the list is empty' do
      it 'returns a value of 0' do
        expect(empty_dll.length).to eq 0
      end
    end
    context 'when the list not empty' do
      let(:filled_dll) do
        dll.call(00)
      end
      context 'when the list has 1 node' do
        it 'returns 1' do
          expect(filled_dll.length).to eq 1
        end
      end
      context 'when the list has more than 1 node' do
        before(:each) do
          filled_dll.append(10)
          filled_dll.append(20)
          filled_dll.append(30)
        end
        it 'returns then length of the list' do
          expect(filled_dll.length).to eq 4
        end
      end

    end
  end

  describe '#find' do
    let(:search_value) do
      00
    end
    let(:nil_search_value) do
      10
    end
    context 'when the list is empty' do
      it 'returns a nil value' do
        expect(empty_dll.find(search_value)).to eq nil
      end
    end
    context 'when the list is not empty' do
      let(:filled_dll) do
        dll.call(00)
      end
      context 'when the node is found' do
        it 'returns the node' do
          expect(filled_dll.find(search_value).value).to eq 00
        end
      end
      context 'when the node is not found in the list' do
        it 'returns a nil value' do
          expect(filled_dll.find(nil_search_value)).to eq nil
        end
      end
    end
  end

  describe '#insert_after' do
    context 'when the list is empty' do
      it 'returns an error' do
        # expect{ empty_dll.insert_after(10,20) }.to raise_error(EmptyListError)
      end
    end
    
    context 'when the list is not empty' do
      let(:filled_dll) do
        dll.call(00)
      end
      context 'when the node is found' do
        before(:each) do
          node = Node.new(10)
          filled_dll.insert_after(filled_dll.find(00),node)
        end
        it 'insert the new node after the found node' do
          expect(filled_dll.tail.value).to eq 10
        end
      end
      context 'when the node is not found' do
        it 'returns a NodeNotFoundError' do
          # expect{ filled_dll.insert_after(20,30) }.to raise_error(NodeNotFoundError)
        end
      end
    end
  end
end