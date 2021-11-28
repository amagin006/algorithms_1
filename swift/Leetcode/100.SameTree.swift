//
//  100.SameTree.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-08-15.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

 public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if (p == nil && q == nil) { return true }
    if let pNode = p, let qNode = q {
        if pNode.val != qNode.val {
            return false
        }
        return isSameTree(pNode.left, qNode.left) && isSameTree(pNode.right, qNode.right)
    } else {
        return false
    }
}
