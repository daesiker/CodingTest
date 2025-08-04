import Foundation

let fsgud = readLine()!.split(separator: " ").map { Int($0)! }

var graph = Array(repeating: -1, count: fsgud[0] + 1)


let end = fsgud[2]

let direction = [fsgud[3], -fsgud[4]]



func bfs() {
    let start = fsgud[1]
    graph[start] = 0
    var queue = [start]
    var index = 0

    while index < queue.count {
        let x = queue[index]
        index += 1
        if x == end {
            print(graph[x])
            return
        }
        for i in 0..<2 {
            let nx = x + direction[i]

            if 1...fsgud[0] ~= nx && graph[nx] == -1 {
                graph[nx] = graph[x] + 1
                queue.append(nx)
            }
        }
    }

    print("use the stairs")
}

bfs()