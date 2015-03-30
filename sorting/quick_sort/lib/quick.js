Array.prototype.quickSort = function(array,low,high){
  if(low < high){
    var pivot_location = partition(array,low,high);
    this.quickSort(array,low,pivot_location - 1);
    this.quickSort(array,pivot_location + 1, high);
  }
}

function partition(array,low,high){
  var pivot = array[low];
  var leftwall = low;

  for(var i = low; i <= high; i++){
    if(array[i] < pivot){
      leftwall = leftwall + 1;
      array[i],array[leftwall] = array[leftwall], array[i];;
    }
  }
  array[low], array[leftwall] = array[leftwall], array[low];
  return leftwall;
};

/*
pivotIndex := choosePivot(A, lo, hi)
  pivotValue := A[pivotIndex]
  // put the chosen pivot at A[hi]
  swap A[pivotIndex] and A[hi]
  storeIndex := lo
  // Compare remaining array elements against pivotValue = A[hi]
  for i from lo to hi−1, inclusive
    if A[i] < pivotValue
      swap A[i] and A[storeIndex]
      storeIndex := storeIndex + 1
  swap A[storeIndex] and A[hi]  // Move pivot to its final place
  return storeIndex
*/