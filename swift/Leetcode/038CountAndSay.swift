//
//  038CountAndSay.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-01.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func countAndSay(_ n: Int) -> String {
    guard n >= 1 && n <= 30 else { return "n >= 1 and n <= 30"}
    
    var str = "1"
    for _ in 1..<n {
        var tempNum = ""
        var count = 1
        
        let numArr = Array(str)
        for i in 0..<str.count {
            if i != str.count - 1 {
                if numArr[i] == numArr[i + 1] {
                    count += 1
                } else {
                    tempNum += String(count)
                    tempNum += String(numArr[i])
                    count = 1
                }
            } else {
                tempNum += String(count)
                tempNum += String(numArr[i])
            }
            
        }
        str = tempNum
    }
    return str
}
