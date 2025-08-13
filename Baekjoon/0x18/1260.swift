import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0]
let m = input[1] 
let v = input[2]

var graph = Array(repeating: [Int](), count: n+1)

for _ in 1...m {
    let t = readLine()!.split(separator: " ").map { Int($0)! }
    graph[t[0]].append(t[1])
    graph[t[1]].append(t[0])
}

for i in 1...n {
    graph[i].sort()
}

var visited = [Bool](repeating: false, count: n+1)
var dfsResult = String(), bfsResult = String()

func dfs(node: Int) {
    visited[node] = true
    dfsResult += "\(node) "

    for next in graph[node] {
        if !visited[next] {
            dfs(node: next)
        }
    }
}

dfs(node: v)
visited = [Bool](repeating: false, count : n+1)

var queue = [Int]()
var head = 0

queue.append(v)
visited[v] = true

while head < queue.count {
    let here = queue[head]
    bfsResult += "\(here) "
    head += 1
    for next in graph[here] {
        if !visited[next] {
            visited[next] = true
            queue.append(next)
        }
    }
}

print(dfsResult)
print(bfsResult)
