unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]

def selection_sort(a)
  n = a.size - 1

  n.times do |i|
    index_min = i

    (i + 1).upto(n) do |j|
      index_min = j if a[j] < a[index_min]
    end

   a[i], a[index_min] = a[index_min], a[i] if index_min != i
  end

  return a
end

puts selection_sort(unsorted_array)
