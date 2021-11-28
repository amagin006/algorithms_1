//
//  204.CountPrimes.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-24.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func isPrime(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    if n == 2 {
        return true
    }
    if n == 3 {
        return true
    }
    let sr = Int(sqrt(Double(n)))
    for i in 2...sr {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func countPrimes(_ n: Int) -> Int {
    var count = 0
    for i in 0..<n {
        if isPrime(i) {
            count += 1
        }
    }
    return count
}
