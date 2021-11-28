//
//  414.ThirdMaximumNumber.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-08-17.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func thirdMax(_ nums: [Int]) -> Int {
    var top3 = Set<Int>()
    for num in nums {
        top3.insert(num)
        if top3.count > 3 {
            let min = top3.min()
            top3.remove(min!)
        }
    }
    return (top3.count == 3) ? top3.min()! : top3.max()!
}

