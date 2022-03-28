// function searchInsert(nums: number[], target: number): number {
//   return searchInsertHelper(nums, target, 0);
// }

// function searchInsertHelper(
//   nums: number[],
//   target: number,
//   left: number
// ): number {
//   if (nums.length === 1) {
//     const isTargetSmall = target <= nums[0];
//     return isTargetSmall ? left : left + 1;
//   }
//   const mid = Math.trunc(nums.length / 2);
//   if (target < nums[mid]) {
//     return searchInsertHelper(nums.slice(0, mid), target, left);
//   } else if (target > nums[mid]) {
//     return searchInsertHelper(nums.slice(mid + 1), target, left + mid + 1);
//   } else {
//     return left + mid;
//   }
// }

// Time complexity: O(log n)
// Space comlexity: O(log n)

function searchInsert(nums: number[], target: number): number {
  return searchInsertHelper(nums, target, 0, nums.length - 1);
}

function searchInsertHelper(
  nums: number[],
  target: number,
  start: number,
  end: number
): number {
  if (start > end) {
    return start;
  }

  let mid: number = start + Math.floor((end - start) / 2);
  if (nums[mid] === target) {
    return mid;
  } else if (nums[mid] < target) {
    // right
    return searchInsertHelper(nums, target, mid + 1, nums.length - 1);
  } else if (nums[mid] > target) {
    // left
    return searchInsertHelper(nums, target, start, mid - 1);
  }
}

const searchInsert_nums = [1, 3];
const target = 4;

console.log("searchInsert", searchInsert(searchInsert_nums, target));
