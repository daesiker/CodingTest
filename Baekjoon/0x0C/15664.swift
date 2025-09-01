import Foundation

// N개의 자연수와 자연수 M이 주어졌을 때, 아래 조건을 만족하는 길이가 M인 수열을 모두 구하는 프로그램을 작성하시오.
// N개의 자연수 중에서 M개를 고른 수열
// 고른 수열은 비내림차순이어야 한다.
// 길이가 K인 수열 A가 A1 ≤ A2 ≤ ... ≤ AK-1 ≤ AK를 만족하면, 비내림차순이라고 한다.

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var visited = Array(repeating: false, count: n)

var stack = [Int]()
var answer = [String]()

backTracking()

print(answer.joined(separator: "\n"))

func backTracking(_ start: Int = 0) {

    if stack.count == m {
        let value = stack.map { String($0) }.joined(separator: " ")
        if !answer.contains(value) {
            answer.append(value)
        }
        
        return
    }

    for i in start..<n {
        if !visited[i] {
            stack.append(arr[i])
            visited[i] = true
            backTracking(i)
            stack.removeLast()
            visited[i] = false
        }

        
    }
}