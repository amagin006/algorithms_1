//
//  088MergeSortedArray .swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-04.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var num1Index = 0
    var num2Index = 0
    var count = 0
    if n == 0 { return }
    while num2Index < n {
        if nums1[num1Index] <= nums2[num2Index] && count < m {
            num1Index += 1
            count += 1
        } else {
            nums1.insert(nums2[num2Index], at: num1Index)
            nums1.removeLast()
            num1Index += 1
            num2Index += 1
        }
    }
}
