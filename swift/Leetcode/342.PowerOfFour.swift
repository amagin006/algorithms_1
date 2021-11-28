//
//  342.PowerOfFour.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-18.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func isPowerOfFour(_ num: Int) -> Bool {
    if num < 1 { return false }
    var n = num
    while n % 4 == 0 {
        n = n / 4
    }
    return n == 1
}
