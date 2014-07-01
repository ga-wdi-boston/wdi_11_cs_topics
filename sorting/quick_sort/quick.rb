unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]

class Array
  def quicksort
    return self if size <= 1
    pivot = self.sample
    left_array
    select{|x| x < pivot}.quicksort + [pivot] + select{|x| x > pivot}.quicksort
  end
end

puts unsorted_array.quicksort
