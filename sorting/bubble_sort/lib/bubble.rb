def bubble_sort(list)
  return list if list.size <= 1 # already sorted

  loop do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end
    break unless swapped
  end

  list
end

# unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]

# puts bubble_sort(unsorted_array)
