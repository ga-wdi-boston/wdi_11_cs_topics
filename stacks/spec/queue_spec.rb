require 'spec_helper'

require_relative '../lib/queue'

describe MyQueue do

  before(:all) do
    @queue = MyQueue.new(1)
  end

  it 'initializes successfully' do
    expect(@queue.class).to eq(MyQueue)
    expect(@queue.head.value).to eq(1)
  end

  it 'adds to the queue' do
    @queue.push(2)
    expect(@queue.head.value).to eq(1)
    expect(@queue.head.next_node).to eq(2)
  end

  it 'removes the first item from the queue' do
    @queue.push(2)
    @queue.pop
    expect(@queue.head.value).to eq(2)
  end
end