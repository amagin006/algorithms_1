//
//  747.LargestNumberAtLeastTwiceofOthers.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-06.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func dominantIndex(_ nums: [Int]) -> Int {
    guard nums.count != 0 else { return -1 }
    
    var max = 0
    var secondMax = 0
    var maxIndex = 0
    for i in 0..<nums.count {
        if max < nums[i] {
            secondMax = max
            max = nums[i]
            maxIndex = i
        } else if secondMax < nums[i] {
            secondMax = nums[i]
        }
    }
    return max >= secondMax * 2 ? maxIndex : -1
}
