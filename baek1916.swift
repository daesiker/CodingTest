import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

typealias Bus = (node: Int, cost: Int)

var graph = Array(repeating: [Bus](), count: n+1)
var cost = Array(repeating: Int.max, count: n+1)
for _ in 0..<m {
    let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    graph[tmp[0]].append((tmp[1], tmp[2]))
}

let se = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (start, end) = (se[0], se[1])

dijikstra(start)

print(cost[end])

func dijikstra(_ node: Int) {
    cost[node] = 0
    var queue: [Bus] = [(start, 0)]
    while !queue.isEmpty {

        let bus: Bus = queue.popLast()!
        if cost[bus.node] < bus.cost {
            continue
        }

        for new in graph[bus.node] {
            
            let newNode = new.node
            let newCost = cost[bus.node] + new.cost
            
            if newCost < cost[newNode] {
                cost[newNode] = newCost
                queue.append((newNode, newCost))
            }

        }

    }


}