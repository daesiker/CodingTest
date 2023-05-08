import Foundation

let nmkx = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, k, x) = (nmkx[0], nmkx[1], nmkx[2], nmkx[3])
var graph = Array(repeating: [Int](), count: n+1)

for _ in 0..<m {
    let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    graph[tmp[0]].append(tmp[1])
}

var dist = Array(repeating: -1, count: n+1)
var check = false

func bfs(_ x: Int) {
    var queue = [x]
    dist[x] = 0

    while !queue.isEmpty {
        let node = queue.popLast()!
        for new in graph[node] {
            if dist[new] == -1 {
                dist[new] = dist[node] + 1
                queue.append(new)
            }
        }
    }
}

bfs(x)

for i in 1..<dist.count {
    if dist[i] == k {
        print(i)
        check.toggle()
    }
}

if !check { print(-1)}