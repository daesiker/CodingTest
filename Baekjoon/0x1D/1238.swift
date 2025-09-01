import Foundation

struct Node: Comparable {
    let to: Int
    let cost: Int
    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost
    }
}

let nmx = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, x) = (nmx[0], nmx[1], nmx[2])
let INF = Int.max / 2
var graph = Array(repeating: [Node](), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph[input[0]].append(Node(to: input[1], cost: input[2]))
}

func dijkstra(_ start: Int) -> [Int] {
    var dist = Array(repeating: INF, count: n + 1)
    dist[start] = 0
    var pq = [Node(to: start, cost: 0)]
    var index = 0
    while index < pq.count {
        let now = pq[index]
        index += 1
        
        if now.cost > dist[now.to] { continue }
        
        for next in graph[now.to] {
            let newCost = now.cost + next.cost
            if newCost < dist[next.to] {
                dist[next.to] = newCost
                pq.append(Node(to: next.to, cost: newCost))
            }
        }
    }
    return dist
}

// X에서 모든 노드까지 최단 거리
let fromX = dijkstra(x)

var answer = 0
for i in 1...n {
    if i == x { continue }
    let toX = dijkstra(i)[x]
    answer = max(answer, toX + fromX[i])
}

print(answer)