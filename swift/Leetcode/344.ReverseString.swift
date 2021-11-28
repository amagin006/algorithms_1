//
//  344.ReverseString.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-23.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func reverseString(_ s: inout [Character]) {
    var j = s.count - 1
    for i in 0..<s.count/2 {
        s.swapAt(i, j)
        j -= 1
    }
    print(s)
}
