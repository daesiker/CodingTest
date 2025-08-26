import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: -1, count: n+1)
for _ in 0..<m {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    graph[tmp[0]].append(tmp[1])
    graph[tmp[1]].append(tmp[0])
}

var answer1 = -1
let result = bfs()
var answer2 = 0

for i in 1...n {
    if result == visited[i] {
        if answer1 == -1 {
            answer1 = i
        }
        answer2 += 1
    }
}

print("\(answer1) \(result) \(answer2)")

func bfs() -> Int {
    var queue = [1]
    visited[1] = 0
    var index = 0
    var result = 0
    while index < queue.count {
        let node = queue[index]
        index += 1

        for new in graph[node] {
            if visited[new] == -1 {
                visited[new] = visited[node] + 1
                result = visited[new]
                queue.append(new)
            }
        }

    }
    return result
}


