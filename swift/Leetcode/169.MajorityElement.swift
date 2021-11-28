//
//  169.MajorityElement.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-16.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    let setArray = Array(Set(nums))
    for i in 0..<setArray.count {
        var count = 0
        for j in 0..<nums.count {
            if setArray[i] == nums[j] {
                count += 1
            }
        }
        if count > nums.count / 2 {
            return setArray[i]
        }
    }
    
    return setArray[0]
}


//func majorityElement(_ nums: [Int]) -> Int {
//    var count = 0
//    var candidate = 0
//
//    for num in nums {
//        if count == 0 {
//            candidate = num
//        }
//        count += num == candidate ? 1 : -1
//    }
//
//    return candidate
//}
