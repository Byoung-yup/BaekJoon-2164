//
//  main.swift
//  BaekJoon#2164
//
//  Created by 김병엽 on 2023/02/01.
//
// Reference: https://seolhee2750.tistory.com/93
import Foundation

let N = Int(readLine()!)!
var queue = Array(1...N)
var tmp = 0

if N == 1 { print(1) }
else {
    while true {
        queue[tmp] = 0
        queue.append(queue[tmp + 1])
        queue[tmp + 1] = 0
        if queue[queue.count - 2] == 0 { print(queue.last!); break }
        tmp += 2
    }
}
