function quickSort(array: number[]) {
  quickSortHelper(array, 0, array.length - 1);
  return array;
}

function quickSortHelper(arr: number[], left: number, right: number) {
  if (left >= right) {
    return;
  }
  let pivot = arr[Math.floor(left + (right - left) / 2)];
  const index = partition(arr, left, right, pivot);
  quickSortHelper(arr, left, index - 1);
  quickSortHelper(arr, index, right);
}

function partition(
  arr: number[],
  left: number,
  right: number,
  pivot: number
): number {
  while (left <= right) {
    while (arr[left] < pivot) {
      left++;
    }
    while (arr[right] > pivot) {
      right--;
    }
    if (left <= right) {
      const temp = arr[left];
      arr[left] = arr[right];
      arr[right] = temp;
      left++;
      right--;
    }
  }
  return left;
}

const quickArr = [130, 10, 50, 29, 48, 3, 42, 12, 69, 399, 4];
const quick_result = quickSort(quickArr);
console.log("result", quick_result);
