//
//  155.MinStack.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-22.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

class MinStack {
    var arr = [Int]()
    var min = Int.max
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        arr.append(x)
        min = arr.min() ?? 0
    }
    
    func pop() {
        arr.removeLast()
        min = arr.min() ?? 0
    }
    
    func top() -> Int {
        return arr[arr.count - 1]
    }
    
    func getMin() -> Int {
        return min
    }
}
