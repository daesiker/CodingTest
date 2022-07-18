//
//  main.swift
//  CodingTest
//
//  Created by Jun on 2022/07/18.
//

import Foundation

class Baek1018 {
    
    init() {
        let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
        let N = nums[0], M = nums[1]
        var input = [Array<Character>]()
        
        for _ in 0..<N {
            let line = readLine()!.map { $0 }
            input.append(line)
        }
        
        print(input)
    }
    
}


