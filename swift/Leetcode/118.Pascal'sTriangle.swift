//
//  118.Pascal'sTriangle.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-26.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func generate(_ numRows: Int) -> [[Int]] {
    
    if numRows == 0 { return [] }
    var ans = [[1]]
    
    for i in 1..<numRows {
        var newRow = [1]
        var prevRow = ans[i - 1]
        
        for j in 1..<i {
            newRow.append(prevRow[j - 1] + prevRow[j])
        }
        newRow.append(1)
        ans.append(newRow)
    }
    
    return ans
}
