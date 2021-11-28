//
//  412.FizzBuzz.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-22.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    var answer = [String]()
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            print(n%3)
            answer.append("FizzBuzz")
        } else if i % 3 == 0 {
            answer.append("Fizz")
        } else if i % 5 == 0 {
            answer.append("Buzz")
        } else {
            answer.append(String(i))
        }
    }
    return answer
}
