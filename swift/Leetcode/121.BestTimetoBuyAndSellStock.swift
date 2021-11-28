//
//  121.BestTimetoBuyAndSellStock.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-05-09.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

func maxProfit1(_ prices: [Int]) -> Int {
    if prices.count == 0 { return 0 }
    var minPrice = prices.first!
    var maxProfit = 0
    for i in 1..<prices.count {
        minPrice = min(minPrice, prices[i])
        maxProfit = max(prices[i] - minPrice, maxProfit)
    }
    return maxProfit
}
