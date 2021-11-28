//
//  821.ShortestDistanceToACharacter.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-04.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    var ans = [Int]()
    
    var prevIndex = Int.min / 2
    var count = 0
    for chr in S  {
        if chr == C {
            prevIndex = count
        }
        ans.append(count - prevIndex)
        count += 1
    }
    count = S.count - 1
    prevIndex = Int.max
    for chr in S.reversed() {
        if chr == C {
            prevIndex = count
        }
        ans[count] = min(prevIndex - count, ans[count])
        count -= 1
    }
    
    return ans
}
// aaba b
