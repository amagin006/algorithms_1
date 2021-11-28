//
//  349.IntersectionOfTwoArrays.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-08-03.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var setArr = Set<Int>()
    var resultArr = Set<Int>()
    for num in nums1 {
        setArr.insert(num)
    }
    for num2 in nums2 {
        if setArr.contains(num2) {
            resultArr.insert(num2)
        }
    }
    
    return Array(resultArr)
}

//     var set1 = Set(nums1)
//     var set2 = Set(nums2)
//     var result = [Int]()

//     for item in set1 {
//         if set2.contains(item) {
//             result.append(item)
//         }
//     }

//     return result

