# unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]
class Array
  def quick_sort(array,low,high)
    if low < high
      p array
      pivot_location = partition(array,low,high)
      quick_sort(array,low,pivot_location - 1)
      quick_sort(array,pivot_location + 1, high)
    end
  end

  private
  def partition(array,low,high)
    pivot = array[low]
    leftwall = low

    for i in (low + 1)..high
      if array[i] < pivot
        leftwall = leftwall + 1
        array[i], array[leftwall] = array[leftwall], array[i]
      end
    end

    array[low], array[leftwall] = array[leftwall], array[low]
    return leftwall
  end
end

# puts unsorted_array.quicksort
