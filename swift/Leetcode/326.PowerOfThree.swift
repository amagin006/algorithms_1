//
//  326.PowerOfThree.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-25.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func isPowerOfThree(_ n: Int) -> Bool {
    if n == 1 { return true }
    
    if n == 0 || n % 3 != 0 {
        return false
    }
    
    return isPowerOfThree(n / 3)
}
