function selectionSort(array: number[]): number[] {
  for (let i = 0; i < array.length; i++) {
    let minIndex = i; // minmum number index
    for (let j = i + 1; j < array.length; j++) {
      if (array[minIndex] > array[j]) {
        minIndex = j;
      }
    }
    if (minIndex !== i) {
      const temp = array[i];
      array[i] = array[minIndex];
      array[minIndex] = temp;
    }
  }
  return array;
}

console.time();
const selectionArr = [130, 10, 50, 29, 48, 3, 42, 12, 69, 399, 4];
const selection_result = selectionSort(selectionArr);
console.log("result", selection_result);
console.timeEnd();

// Time complexity: O(n2)
// space comlexity: 1
