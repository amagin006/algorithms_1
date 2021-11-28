//
//  896.MonotonicArray.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-08-01.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func isMonotonic(_ A: [Int]) -> Bool {
    guard A.count > 1 else { return true }
    var up = true
    for i in 0..<A.count - 1 {
        if A[i] > A[i + 1] {
            up = false
            break
        } else if A[i] < A[i + 1] {
            break
        }
    }
    for i in 0..<A.count - 1 {
        if up {
            if A[i] > A[i + 1] {
                return false
            }
        } else {
            if A[i] < A[i + 1] {
                return false
            }
        }
    }
    
    
    return true
}
