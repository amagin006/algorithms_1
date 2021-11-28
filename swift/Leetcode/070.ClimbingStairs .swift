//
//  070.ClimbingStairs .swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-07.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func climbStairs(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    var d = [Int](repeating: 0, count: n + 1)
    d[0] = 0
    d[1] = 1
    d[2] = 2
    
    for i in 3..<n + 1{
        d[i] = d[i-1] + d[i-2]
    }
    
    return d[n]
    
}
