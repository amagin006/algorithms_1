//
//  283.MoveZeroes.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-10.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var j = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums[j] = nums[i]
            j += 1
        }
    }
    for k in j..<nums.count {
        nums[k] = 0
    }
    print(nums)
}
