//
//  922.SortArrayByParityII.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-13.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var evenNums = [Int]()
    var oddNums = [Int]()
    var result = [Int]()
    for num in A {
        if num % 2 == 0 {
            evenNums.append(num)
        } else {
            oddNums.append(num)
        }
    }
    for i in 0..<oddNums.count {
        result.append(evenNums[i])
        result.append(oddNums[i])
    }
    
    return result
}
