//
//  008.StringToIntegerAtoi.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-26.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func myAtoi(_ str: String) -> Int {
    let newStr = str.trimmingCharacters(in: .whitespaces)
    var numStr = ""
    var resultNum = 0
    
    for char in newStr {
        if Int(String(char)) != nil {
            numStr.append(char)
        } else if (char == "+" || char == "-") && numStr.isEmpty {
            numStr.append(char)
        } else {
            break
        }
    }
    
    if let num = Int(numStr) {
        if num > Int32.max {
            resultNum = Int(Int32.max)
        } else if num < Int32.min {
            resultNum = Int(Int32.min)
        } else {
            resultNum = num
        }
    } else if numStr.count > 1 {
        if numStr.first == "-" {
            resultNum = Int(Int32.min)
        } else {
            resultNum = Int(Int32.max)
        }
    }
    return resultNum
}
