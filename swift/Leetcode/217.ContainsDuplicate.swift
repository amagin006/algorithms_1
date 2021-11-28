//
//  217.ContainsDuplicate.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-19.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    let set = Set(nums)
    if set.count != nums.count {
        return true
    }
    return false
}
