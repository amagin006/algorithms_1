//
//  733.FloodFill.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-30.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation


func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
    var resultImage = image
    let oldColor = image[sr][sc]
    let height = image.count
    let width = image[0].count
    var check = Array<Array<Bool>>(repeating: Array<Bool>(repeating: false, count: width), count: height)
    resultImage[sr][sc] = newColor
    
    dfs(x: sc, y: sr, oldColor: oldColor, newColor: newColor, map: &resultImage, check: &check)
    return resultImage
}

func dfs(x: Int, y: Int, oldColor: Int, newColor: Int, map: inout [[Int]], check: inout [[Bool]]) {
    var dx = [0, 1, 0, -1]
    var dy = [-1, 0, 1, 0]
    for i in 0..<4 {
        
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if ny >= 0 && ny < map.count && nx >= 0 && nx < map[0].count && !check[ny][nx]{
                if map[ny][nx] == oldColor {
                    map[ny][nx] = newColor
                    check[ny][nx] = true
                    dfs(x: nx, y: ny, oldColor: oldColor, newColor: newColor, map: &map, check: &check)
            }
        }
    }
}
    

