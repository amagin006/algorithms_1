//
//  035.SearchInsertPosition.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-12.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count != 0 else { return 0 }
    for (index, num) in nums.enumerated() {
        if num >= target {
            return index
        }
    }
    return nums.count
}
