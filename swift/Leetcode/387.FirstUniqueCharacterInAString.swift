//
//  387.FirstUniqueCharacterInAString.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-23.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
    var dict = [Character: Int]()
    for ch in s {
        dict[ch] = dict[ch, default: 0] + 1
    }
    for (i, ch) in s.enumerated() {
        if dict[ch] == 1 {
            return i
        }
    }
    return -1
}
