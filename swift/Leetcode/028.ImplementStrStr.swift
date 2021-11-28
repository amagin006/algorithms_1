//
//  028.ImplementStrStr.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-28.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.count == 0 {
        return 0
    } else if haystack.count == needle.count {
        return haystack != needle ? -1 : 0
    } else if let range = haystack.range(of: needle) {
        let subString = range.lowerBound
        
        return haystack[haystack.startIndex..<subString].count
    }
    
    return -1
}
