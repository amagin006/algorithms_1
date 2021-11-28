//
//  704.BinarySearch.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-28.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    var minIndex = 0
    var lastIndex = nums.count - 1
    var midIndex: Int
    
    while minIndex <= lastIndex {
        midIndex = (minIndex + lastIndex) / 2
        if nums[midIndex] == target {
            return midIndex
        } else if nums[midIndex] > target {
            lastIndex = midIndex - 1
        } else if nums[midIndex] < target {
            minIndex = midIndex + 1
        }
        print("min - last - mid  \(minIndex) \(lastIndex) \(midIndex)")
    }
    return -1
    
}
