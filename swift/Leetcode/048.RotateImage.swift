//
//  048.RotateImage.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-21.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    matrix = matrix.reversed()
    for i in 0...matrix.count - 1 {
        for j in 0...i {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
}
