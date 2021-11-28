//
//  leetcode01.swift
//  Leetcode
//
//  Created by Shota Iwamoto on 2019-04-13.
//  Copyright © 2019 Shota Iwamoto. All rights reserved.
//

import Foundation

// reverse Element without reverse function and new array
func reverseElement(_ s: inout [Int]) -> [Int] {
    for i in 0..<s.count / 2 {
//        let temp = s[i]
//        s[i] = s[s.count - 1 - i]
//        s[s.count - 1 - i] = temp
        s.swapAt(i, s.count - 1 - i)
    }
    return s
}


// quickSort
// O(n log n) -- O(n^2)
func quickSort(_ s: inout [Int], startIndex: Int, endIndex: Int) -> [Int] {
    quickSortHelper(&s, startIndex: startIndex, endIndex: endIndex)
    return s
}

func quickSortHelper(_ s: inout [Int], startIndex: Int, endIndex: Int) {
    if startIndex >= endIndex {
        return
    }
    var pivIndex = startIndex
    let pivNum = s[endIndex]
    for i in startIndex..<endIndex {
        if (s[i] < pivNum) {
            if i != pivIndex {
                s.swapAt(pivIndex, i)
            }
            pivIndex += 1
        }
    }
    s.swapAt(pivIndex, endIndex)
    
    quickSortHelper(&s, startIndex: 0, endIndex: pivIndex - 1)
    quickSortHelper(&s, startIndex: pivIndex, endIndex: endIndex)
}

// margeSort
// O(n log n)
func margeSort(_ s: [Int]) -> [Int] {
    guard s.count > 1 else { return s }
    
    
    let mid = s.count / 2
    let leftArr = Array(margeSort(Array(s[0..<mid])))
    let rightArr = Array(margeSort(Array(s[mid..<s.count])))
    
    return marge(left: leftArr, right: rightArr)
}

func marge(left: [Int], right: [Int]) -> [Int] {
    
    var leftIndex = 0, rightIndex = 0
    var sortedArr = [Int]()
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            sortedArr.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            sortedArr.append(right[rightIndex])
            rightIndex += 1
        } else {
            sortedArr.append(left[leftIndex])
            sortedArr.append(right[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        sortedArr.append(left[leftIndex])
        leftIndex += 1
    }
    while rightIndex < right.count {
        sortedArr.append(right[rightIndex])
        rightIndex += 1
    }
    
    
    return sortedArr
}


// heap sort
// O(n log n)
//[ 5, 1, 9, 11, 7, 8, 13, 2, 3]

func heapSort(_ s: inout [Int]) {
    // make heap tree
    for i in (0..<s.count/2).reversed(){
        heaplify(&s, length: s.count, lastIndex: i )
    }
    // [13, 11, 9, 3, 7, 8, 5, 2, 1]
    
    // heap sort
    for i in (0..<s.count).reversed() {
        s.swapAt(i, 0)
        heaplify(&s, length: i, lastIndex: 0)
    }

    print("ans: \(s)")
}

func heaplify(_ s: inout [Int], length: Int, lastIndex: Int) {
    
    var large = lastIndex
    let left = lastIndex * 2 + 1
    let right = lastIndex * 2 + 2
    if length > left && s[left] > s[large] {
        large = left
    }
    if length > right && s[right] > s[large] {
        large = right
    }
    if large != lastIndex {
        s.swapAt(lastIndex, large)

        heaplify(&s, length: length, lastIndex: large)
    }
    
    
}
