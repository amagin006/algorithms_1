//
//  125.ValidPalindrome.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-26.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
    let trimWhiteSpacesString = s.replacingOccurrences(of: " ", with: "").lowercased()
    let newStr = trimWhiteSpacesString.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "")
    let strArr = newStr.map{ String($0) }
    
    var lastIndex = strArr.count - 1
    for i in 0..<strArr.count/2 {
        if strArr[i] != strArr[lastIndex] {
            return false
        }
        lastIndex -= 1
    }
    
    return true
}

