//
//  122.BestTimeToBuyAndSellStockII.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-15.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

// 122.Best Time to Buy and Sell Stock II

func maxProfit2(_ prices: [Int]) -> Int {
    var maxProfit = 0
    
    for i in 0..<prices.count - 1 {
        let diff = prices[i + 1] - prices[i]
        if diff > 0 {
            maxProfit += diff
        }
    }
    return maxProfit
}
