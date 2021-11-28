//
//  830.PositionsOfLargeGroups.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-09-09.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func largeGroupPositions(_ S: String) -> [[Int]] {

  var priviouWord = ""
  var count = 0
  var firstIndex = 0
  var group = [Int]()
  var result = [[Int]]()

  for i in 0..<S.count {
    let index = S.index(S.startIndex, offsetBy: i)
    if priviouWord == String(S[index]) {
      count += 1
      if count == 1 {
        firstIndex = i - 1
      }
    } else {
      if count >= 2 {
        group.append(firstIndex)
        group.append(i - 1)
        result.append(group)
        group = []
        priviouWord = String(S[S.index(S.startIndex, offsetBy: i)])
      }
      firstIndex = 0
      count = 0
    }
    priviouWord = String(S[S.index(S.startIndex, offsetBy: i)])
  }
  if count >= 2 {
    group.append(firstIndex)
    group.append(S.count - 1)
    result.append(group)
  }
  return result
}
