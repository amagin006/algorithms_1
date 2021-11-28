//
//  020.ValidParentheses.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-06-09.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func isValid(_ s: String) -> Bool {
    if s.count == 0 { return true }
    
    var stack = [String]()
    for chr in s {
        if chr == "(" || chr == "[" || chr == "{" {
            stack.append(String(chr))
        } else {
            if stack.last == "(" && chr == ")" ||
                stack.last == "[" && chr == "]" ||
                stack.last == "{" && chr == "}" {
                stack.removeLast()
            } else {
                return false
            }
        }
    }
    
    return stack == []
}
