//
//  728.SelfDividingNumbers.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-08-16.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result = [Int]()
    
    outerLoop: for i in left...right {
        for c in String(i) {
            if  c == "0"  || i % Int(String(c))! != 0 {
                continue outerLoop
            }
        }
        result.append(i)
    }
    
    return result
}
