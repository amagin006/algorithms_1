//
//  268.MissingNumber.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-01.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    var missingTotalSum = 0
    var totalSum = 0
    for i in 0..<nums.count {
        missingTotalSum += nums[i]
        totalSum += i + 1
    }
    return totalSum - missingTotalSum
}
