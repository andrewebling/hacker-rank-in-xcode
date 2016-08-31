//
//  main.swift
//  HackerRankTemplate
//
//  Created by Andrew Ebling on 19/08/2016.
//  Copyright © 2016 Tenero. All rights reserved.
//

import Foundation

var n = Int(readLine()!)!

var matrix: [[Int]] = []

for i in 0..<n {
    let matrixLine = readLine()!
    let arr = matrixLine.characters.split(" ").map { Int(String($0))! }
    matrix.append(arr)
}

var diag = (0, 0)

for (x,y) in Zip2Sequence((0..<n).reverse(), (0..<n)) {
    diag.0 += matrix[x][x]
    diag.1 += matrix[x][y]
}

print(abs(diag.0 - diag.1))

