//
//  198.HouseRobber.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-20.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    if nums.count == 1 {
        return nums[0]
    }
    
    var d = [Int](repeating: 0, count: nums.count)
    d[0] = nums[0]
    d[1] = max(nums[0], nums[1])
    
    
    for i in 2..<nums.count {
        d[i] = max(d[i - 1], d[i - 2] + nums[i])
        
    }
    
    return d[nums.count - 1]
}
