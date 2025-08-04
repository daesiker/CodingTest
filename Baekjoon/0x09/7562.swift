import Foundation

let T = Int(readLine()!)!

let dx = [1, 1, 2, 2, -1, -1, -2, -2]
let dy = [2, -2, 1, -1, 2, -2, 1, -1]


for _ in 0..<T {
    let n = Int(readLine()!)!

    var graph = Array(repeating: Array(repeating: 0, count: n), count: n)
    let start = readLine()!.split(separator: " ").map { Int($0)! }
    let end = readLine()!.split(separator: " ").map { Int($0)! }
    bfs(&graph, start, end)

}

func bfs(_ graph: inout [[Int]], _ start: [Int], _ end: [Int]) {
    var queue = [(start[0], start[1])]
    var index = 0
    graph[start[0]][start[1]] = 1

    while index < queue.count {
        let (x, y) = queue[index]
        index += 1
        if x == end[0] && y == end[1] {
                print(graph[x][y] - 1)
                return
            }

        for i in 0..<8 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            

            if 0..<graph.count ~= nx && 0..<graph.count ~= ny {
                if graph[nx][ny] == 0 {
                    graph[nx][ny] = graph[x][y] + 1
                    queue.append((nx, ny))
                }
            }
        }
    }
}

