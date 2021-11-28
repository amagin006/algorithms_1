//
//  066.PlusOne .swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-20.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var newDigits = digits
    var plusOne = 1
    // for i in stride(from: digits.count - 1, to: -1, by: -1) {
    for i in (0..<newDigits.count).reversed() {

        if newDigits[i] == 9 && plusOne == 1{
            newDigits[i] = 0
            plusOne = 1
        } else {
            newDigits[i] += plusOne
            plusOne = 0
        }
        print(i, plusOne)
        if i == 0 && plusOne == 1 {
            newDigits.insert(1, at: 0)
        }
    }
    return newDigits
}

