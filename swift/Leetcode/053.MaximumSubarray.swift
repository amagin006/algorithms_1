//
//  053.MaximumSubarray.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-18.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    } else if nums.count == 1 {
        return nums[0]
    }
    
    
    var maxValue = nums[0]
    var sum = nums[0]
    for i in 1..<nums.count {
        if sum + nums[i] <= nums[i] {
            sum = nums[i]
        } else {
            sum += nums[i]
        }
        if sum > maxValue {
            maxValue = sum
        }
        
    }
    
    return maxValue
}
