//
//  941.ValidMountainArray.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-29.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func validMountainArray(_ A: [Int]) -> Bool {
    guard A.count >= 3, A[0] < A[1] else { return false }
    
    var index = 0
    
    if A[0] < A[1] {
        for i in 1..<A.count - 1 {
            if A[i - 1] >= A[i]  {
                break
            }
            index = i
        }
    } else {
        return false
    }
    
    while index < A.count - 1 {
        if A[index] > A[index + 1] {
            index += 1
        } else {
            return false
        }
    }
    
    return true
}
