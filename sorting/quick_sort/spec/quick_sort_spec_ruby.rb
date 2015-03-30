require 'spec_helper'
require_relative '../lib/quick'

describe 'Quick Sort' do
  before(:each) do
    @array = [2,4,1,6,0,7,3,5,67,32,23,54,21,20,19,16,75,24,27]
    @array2 = [5,8,1,2,0,13,34,6,7]
  end

  it 'returns a sorted array' do
    @array.quick_sort(@array,0,@array.length-1)
    @array2.quick_sort(@array2,0,@array2.length-1)
    expect(@array).to eq([0,1,2,3,4,5,6,7,16,19,20,21,23,24,27,32,54,67,75])
    expect(@array2).to eq([0,1,2,5,6,7,8,13,34])
  end
end