import Foundation

// 5 6
// 1
// 5 1 1
// 1 2 2
// 1 3 3
// 2 3 4
// 2 4 5
// 3 4 6

typealias Node = (des: Int, w: Int)
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let target = Int(readLine()!)!

var graph = Array(repeating: [Node](), count: n+1)
var dist = Array(repeating: Int.max, count: n+1)
dist[target] = 0

for _ in 0..<m {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    graph[tmp[0]].append((tmp[1], tmp[2]))
}

dijikstra()

for i in 1...n {
    if dist[i] == Int.max {
        print("INF")
    } else {
        print(dist[i])
    }
}



func dijikstra() {
    var queue:[Node] = [(target, 0)]
    var index = 0

    while index < queue.count {
        let node = queue[index]
        index += 1

        for new in graph[node.des] {
            let value = new.w + node.w
            if dist[new.des] >  value {
                dist[new.des] = value
                queue.append((new.des, value))
            } 
        }
    }


}