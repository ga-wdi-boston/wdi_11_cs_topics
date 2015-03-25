require 'spec_helper'

require_relative '../lib/binary_converter'

describe BinaryConverter do
  it 'converts strings of binary to Fixnums' do
    expect(BinaryConverter.to_fixnum('00000')).to eq(0)
    expect(BinaryConverter.to_fixnum('0')).to eq(0)
    expect(BinaryConverter.to_fixnum('1')).to eq(1)
    expect(BinaryConverter.to_fixnum('01')).to eq(1)
    expect(BinaryConverter.to_fixnum('001')).to eq(1)
    expect(BinaryConverter.to_fixnum('010')).to eq(2)
    expect(BinaryConverter.to_fixnum('100')).to eq(4)
    expect(BinaryConverter.to_fixnum('1001')).to eq(9)
    expect(BinaryConverter.to_fixnum('10001')).to eq(17)
    expect(BinaryConverter.to_fixnum('10101')).to eq(21)
  end
end
