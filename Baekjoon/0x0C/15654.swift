// N개의 자연수와 자연수 M이 주어졌을 때, 아래 조건을 만족하는 길이가 M인 수열을 모두 구하는 프로그램을 작성하시오. N개의 자연수는 모두 다른 수이다.

// N개의 자연수 중에서 M개를 고른 수열

// 4 2
// 9 8 7 1

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var stack = [Int]()
var answer = [String]()

backTracking()

print(answer.joined(separator: "\n"))

func backTracking() {

    if stack.count == m {
        answer.append(stack.map { String($0)}.joined(separator: " "))
        return 
    }

    for i in 0..<n {
        if !stack.contains(arr[i]) {
            stack.append(arr[i])
            backTracking()
            stack.removeLast()
        }
    }



}

// 1 7
// 1 8
// 1 9
// 7 1
// 7 8
// 7 9
// 8 1
// 8 7
// 8 9
// 9 1
// 9 7
// 9 8