function maxSubArray(nums: number[]): number {
  if (nums.length === 1) return nums[0];

  let dp: number[] = [nums[0]]; // Memorized

  for (let i = 0; i < nums.length - 1; i++) {
    const sum = dp[i] + nums[i + 1];
    // compare with memorized num and last number
    // memo maxNumber either memorized num + last number or last number
    if (sum < nums[i + 1]) {
      dp.push(nums[i + 1]);
    } else {
      dp.push(sum);
    }
  }
  return Math.max(...dp);
}

// time O(n)
// space O(n)
