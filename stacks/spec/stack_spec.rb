require 'spec_helper'
require_relative '../lib/stack'

describe Stack do

  before(:all) do
    @stack = Stack.new(1)
  end

  it 'initializes successfully' do
    expect(@stack.class).to eq(Stack)
    expect(@stack.head.value).to eq(1)
  end

  it 'adds to the stack' do
    @stack.push(2)
    expect(@stack.head.value).to eq(2)
    expect(@stack.head.next_node.value).to eq(1)
  end

  it 'removes the first item from the stack' do
    @stack.push(2)
    @stack.pop
    expect(@stack.head.value).to eq(2)
  end
end