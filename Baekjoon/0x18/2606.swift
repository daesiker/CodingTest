import Foundation

let n = Int(readLine()!)!
let s = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)

for _ in 0..<s {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    graph[tmp[0]].append(tmp[1])
    graph[tmp[1]].append(tmp[0])
}

visited[1] = true
var queue = [1]
var index = 0
var answer = 0

while index < queue.count {
    let node = queue[index]
    index += 1

    for new in graph[node] {
        if !visited[new] {
            answer += 1
            queue.append(new)
            visited[new] = true
        }
    }
}

print(answer)