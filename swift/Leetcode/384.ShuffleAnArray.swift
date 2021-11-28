//
//  384.ShuffleAnArray.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-20.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

class Solution {
    
    var setNums = [Int]()
    init(_ nums: [Int]) {
        setNums = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return setNums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        return setNums.shuffled()
    }
}
