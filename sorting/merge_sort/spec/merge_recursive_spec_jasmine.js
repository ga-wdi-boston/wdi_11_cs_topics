describe("Merge Sort", function() {
  var unsorted_array1, unsorted_array2;
  beforeEach(function() {
    unsorted_array1 = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4, 2, 4]
    unsorted_array2 = [4, 13, 2, 578, 1, 2875, 24, 12]
  });
  it("sorts an unsorted array", function() {
    expect(mergeSort(unsorted_array1)).toEqual([-20,0,2,2,2,3,4,4,5,5,20,28,42,398]);
    expect(mergeSort(unsorted_array2)).toEqual([1,2,4,12,13,24,578,2875]);
  });
});