int findMax(List<int> arr) {
  int max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}

void Main() {
  findMax([1, 5, 6, 2, 8, 12]);
}