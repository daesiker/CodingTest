import Foundation

struct Node: Comparable {
    let des: Int
    let cost: Int
    static func < (lhs: Node, rhs: Node) -> Bool {
        return lhs.cost < rhs.cost
    }
}

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let INF = Int.max / 2

var graph = Array(repeating: [(Int, Int)](), count: n+1)

for _ in 0..<m {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    graph[tmp[0]].append((tmp[1], tmp[2]))
}

let se = readLine()!.split(separator: " ").map { Int($0)! }
let (s, e) = (se[0], se[1])

var cost = Array(repeating: INF, count: n+1)
var parent = Array(repeating: -1, count: n+1)
cost[s] = 0

// 우선순위 큐 (힙)
var pq = [Node(des: s, cost: 0)]
var index = 0
while index < pq.count {
    let now = pq[index]
    index += 1
    if cost[now.des] < now.cost { continue }
    
    for (next, c) in graph[now.des] {
        let newCost = now.cost + c
        if newCost < cost[next] {
            cost[next] = newCost
            parent[next] = now.des
            pq.append(Node(des: next, cost: newCost))
        }
    }
}

// 경로 복원
var path = [Int]()
var cur = e
while cur != -1 {
    path.append(cur)
    cur = parent[cur]
}
path.reverse()

// 출력
print(cost[e])
print(path.count)
print(path.map { String($0) }.joined(separator: " "))