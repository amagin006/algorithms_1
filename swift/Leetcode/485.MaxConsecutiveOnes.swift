//
//  485.MaxConsecutiveOnes.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-20.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var count = 0
    var max = 0
    for i in 0..<nums.count {
        if nums[i] == 1 {
            count += 1
        } else {
            if max < count {
                max = count
            }
            count = 0
        }
    }
    if max < count { max = count }
    return max
}
