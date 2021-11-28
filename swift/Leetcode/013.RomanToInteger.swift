//
//  13.Roman to Integer.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-15.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

// 13. Roman to Integer
func romanToInt(_ s: String) -> Int {
    
    let romanArray = s.map{ String($0) }
    
    var sum = romanToInteger(romanArray[romanArray.count - 1])
    
    for i in stride(from: romanArray.count - 2, to: -1, by: -1) {
        
        let num = romanToInteger(romanArray[i])
        let numAfterOne = romanToInteger(romanArray[i + 1])
        
        if num >= numAfterOne {
            sum += num
        } else {
            sum -= num
        }
    }
    return sum
}

func romanToInteger(_ roman: String) -> Int {
    var num = 0
    switch roman {
    case "I":
        num = 1
    case "V":
        num = 5
    case "X":
        num = 10
    case "L":
        num = 50
    case "C":
        num = 100
    case "D":
        num = 500
    case "M":
        num = 1000
    default:
        num = 0
    }
    return num
}
