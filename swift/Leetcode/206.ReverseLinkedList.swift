//
//  206.ReverseLinkedList.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-17.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
      self.val = val
      self.next = nil
    }
}


func reverseList(_ head: ListNode?) -> ListNode? {
    var currentNode = head
    var next: ListNode?
    var pre: ListNode?
    
    while currentNode != nil {
        next = currentNode!.next
        currentNode!.next = pre
        pre = currentNode
        
        currentNode = next
    }
    
    return pre
}

