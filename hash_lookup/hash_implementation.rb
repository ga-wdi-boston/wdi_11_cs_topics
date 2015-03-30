require 'pry'

HashEntry = Struct.new(:key, :value)

class HashTable
  # your code goes here
end

entry = HashEntry.new :foo, :bar
table = HashTable.new
table << entry

binding.pry