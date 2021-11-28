//
//  058.LengthOfLastWord.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-19.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    let s = s.trimmingCharacters(in: CharacterSet(charactersIn: " "))
    guard let index = s.lastIndex(of: " ") else { return s.count }
    return s[index...].count - 1
}
