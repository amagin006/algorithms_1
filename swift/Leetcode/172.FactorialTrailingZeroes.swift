//
//  172.FactorialTrailingZeroes.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-27.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func trailingZeroes(_ n: Int) -> Int {
    var count = 0
    var num = n
    
    while num > 0 {
        num /= 5
        count += num
    }
    
    return count
}
