import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n+1)

for _ in 0..<m {
    let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    graph[tmp[0]].append(tmp[1])
    graph[tmp[1]].append(tmp[0])
}

var visited = Array(repeating: false, count: n+1)
var queue = [1]
var answer = 0

func dfs(_ x: Int) {
    visited[x] = true

    for node in graph[x] {
        if !visited[node] {
            answer += 1
            dfs(node)
        }
    }
}
dfs(1)