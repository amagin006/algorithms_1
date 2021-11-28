//
//  242.ValidAnagram.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-24.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    var dictS = [Character:Int]()
    var dictT = [Character:Int]()
    for ch in s {
        dictS[ch] = dictS[ch, default: 0] + 1
    }
    for ch in t {
        dictT[ch] = dictT[ch, default: 0] + 1
    }
    return dictS == dictT
}

