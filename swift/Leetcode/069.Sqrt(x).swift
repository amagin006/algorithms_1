//
//  069.Sqrt(x).swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-08.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
    var num = 0
    while x >= num * num {
        num += 1
    }
    return num
}
