//
//  232.ImplementQueueUsingStacks.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-15.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

class MyQueue {
    var stack: [Int]
    
    /** Initialize your data structure here. */
    init() {
        stack = [Int]()
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        stack.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        guard let popNum = stack.first else { return -1 }
        stack.remove(at: 0)
        return popNum
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return stack.first ?? -1
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return stack.count == 0
    }
}
