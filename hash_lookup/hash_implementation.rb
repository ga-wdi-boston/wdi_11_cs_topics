require 'pry'

HashEntry = Struct.new(:key, :value)

class HashTable
  attr_accessor :bins
  attr_accessor :bin_count

  def initialize
    self.bins = []
    self.bin_count = 11
  end

  def bin_for(key)
    key.hash % self.bin_count
  end

  def <<(entry)
    index = bin_for(entry.key)
    self.bins[index] ||= []
    self.bins[index] << entry
  end

  def [](key)
    index = bin_for(key)
    self.bins[index].detect do |entry|
      entry.key == key
    end
  end
end

entry = HashEntry.new :foo, :bar
table = HashTable.new
table << entry

binding.pry