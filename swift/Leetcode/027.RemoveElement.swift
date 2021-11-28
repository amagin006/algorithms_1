//
//  27.RemoveElement.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-08-14.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation
//[3,2,2,3]
//3

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var index = 0
    while nums.count > index {
        if nums[index] == val {
            nums.remove(at: index)
        } else {
            index += 1
        }
    }
    
    return index
}
