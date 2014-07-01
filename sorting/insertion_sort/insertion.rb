unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]

def insertion_sort(array)
  (1..array.length-1).each do |i|
    value_to_insert = array.delete_at(i)

    insertion_index = i
    insertion_index -= 1 while insertion_index > 0 && value_to_insert < array[insertion_index -1]

    array.insert(insertion_index, value_to_insert)
  end

  return array
end

puts insertion_sort(unsorted_array)
