//
//  977.SquaresOfASortedArray.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-09-19.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

// [-4,-1,0,3,10]
func sortedSquares(_ A: [Int]) -> [Int] {
  var result = [Int]()
  for num in A {
    result.append(abs(num)*abs(num))
  }
  result.sort()
  return result
}
