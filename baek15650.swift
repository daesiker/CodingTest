import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var visited = Array(repeating: false, count: n+1)
var depth = 0
var stack:[Int] = []

func backTracking(_ depth: Int) {
    if depth == m {
        if stack.sorted() == stack {
            print(stack.map{String($0)}.joined(separator: " "))
        }
        return
    } else {
        for i in 1...n {
            if !visited[i] {
                visited[i] = true
                stack.append(i)
                backTracking(depth + 1)
                visited[i] = false
                stack.removeLast()
            }
        }
    }
}

backTracking(depth)