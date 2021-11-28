//
//  014.LongestCommonPrefix.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-02.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 {return ""}
    var prefix = ""
    var minChar = Int.max
    for char in strs {
        if char.count < minChar {
            minChar = char.count
        }
    }
    
    for i in 0..<minChar {
        
        for j in 0..<strs.count {
            if strs[0][strs[0].index(strs[0].startIndex, offsetBy: i)]
                != strs[j][strs[j].index(strs[j].startIndex, offsetBy: i)]{
                    return prefix
            }
        }
        let charcter = strs[0][strs[0].index(strs[0].startIndex, offsetBy: i)]
        prefix.append(charcter)
    }
    
    return prefix
}
