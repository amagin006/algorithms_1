//
//  07.Reverse Integer.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-15.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

// 07. Reverse Integer
func reverse(_ x: Int) -> Int {
    var ans = 0
    var num = x
    while num != 0 {
        let pop = num % 10
        num /= 10
        // 32bit max number 2147483647
        if ans > Int32.max / 10 || ans == Int32.max / 10 && pop > 7 {
            return 0
        }
        // 32bit min number -2147483648
        if ans < Int32.min / 10 || ans == Int32.min / 10 && pop < -8 {
            return 0
        }
        ans = ans * 10 + pop
    }
    return ans
}
