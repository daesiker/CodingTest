import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var graph = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: false, count: n + 1)

for _ in 0..<m {
    let xy = readLine()!.split(separator: " ").map { Int($0)! }
    graph[xy[1]].append(xy[0])
    graph[xy[0]].append(xy[1])
}

var answer = 0

for i in 1...n {
    if !visited[i] {
        bfs(i)
        answer += 1
    }
}

print(answer)

func bfs(_ i: Int) {
    var queue = [i]
    visited[i] = true
    var index = 0

    while index < queue.count {
        let x = queue[index]
        index += 1

        for node in graph[x] {
            if !visited[node] {
                visited[node] = true
                queue.append(node)
            }
        }


    }


}