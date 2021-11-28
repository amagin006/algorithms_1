//
//  350.IntersectionOfTwoArraysII .swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-19.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var ans = [Int]()
    var newNums2 = nums2
    var j = 0
    for i in 0..<nums1.count {
        while j <= newNums2.count - 1 {
            if nums1[i] == newNums2[j] {
                ans.append(nums1[i])
                newNums2.remove(at: j)
                break
            }
            j += 1
        }
        j = 0
    }
   
    return ans
}
