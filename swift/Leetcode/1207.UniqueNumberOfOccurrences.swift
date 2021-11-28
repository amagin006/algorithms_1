//
//  1207.UniqueNumberOfOccurrences.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-09-29.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation
// 1,2,2,1,1,3

func uniqueOccurrences(_ arr: [Int]) -> Bool {
  var uniqueDic: [Int: Int] = [:]
  var occurArr = [Int]()
  for num in arr {
    if let occurNum = uniqueDic[num] {
      uniqueDic[num]! = occurNum + 1
    } else {
      uniqueDic[num] = 1
    }
  }
  for (_, value) in uniqueDic {
    if occurArr.contains(value) {
      return false
    }
    occurArr.append(value)
  }
  return true
}
