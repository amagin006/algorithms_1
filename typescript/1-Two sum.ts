function twoSum(nums: number[], target: number): number[] {
  for (let i = 0; i < nums.length; i++) {
    for (let j = 0; j < nums.length; j++) {
      if (i === j) continue;
      if (nums[i] + nums[j] === target) {
        return [i, j];
      }
    }
  }
}

const nums = [3, 2, 4];
console.log("two sum", twoSum(nums, 6));

// time complexity O(n^2)
// space O(1)
