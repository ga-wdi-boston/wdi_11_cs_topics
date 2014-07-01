var unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4, 2, 4];

var selectionSort = function (a) {
  var n = a.length;
  for (var i = 0; i < n - 1; i++) {
    var min = i;
    for (var j = i + 1; j < n; j++) {
      if (a[min] > a[j]) // Find the smallest item that needs to be swapped
        min = j;
    }
    if (min != i) {
      var tmp = a[i];
      a[i] = a[min];
      a[min] = tmp;
      console.log(a);
    }
  }

  return a;
};

result = selectionSort(unsorted_array);
console.log(result);
