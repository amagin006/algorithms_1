function bubbleSort(array: number[]) {
  for (let i = array.length - 1; 0 <= i; i--) {
    for (let j = 0; j < array.length - 1; j++) {
      if (array[j] > array[j + 1]) {
        let temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return array;
}
const bubble_array = [130, 10, 50, 29, 48, 3, 42, 12, 69, 399, 4];
const bubble_result = bubbleSort(bubble_array);
console.log("result", bubble_result);

// Time complexity: O(n2)
// space comlexity: 1
