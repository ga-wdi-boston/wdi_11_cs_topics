var unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4, 2, 4],
    result;

function swap(items, firstIndex, secondIndex) {
  var temp = items[firstIndex];
  items[firstIndex] = items[secondIndex];
  items[secondIndex] = temp;
};

function bubbleSort(array) {
  var i = 0,
      stop, j, len = array.length;

  for(i; i < len; i++) {
    for(j=0, stop=len-i; j < stop; j++) {
      if(array[j] > array[j + 1]){
        swap(array, j, j+1);
        console.log(array);
      }
    }
  }
  return array
};

result = bubbleSort(unsorted_array);
console.log(result);
