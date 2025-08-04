import Foundation

let n = Int(readLine()!)!

var graph:[[Character]] = []
var graph2:[[Character]] = []
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<n {
    var tmp = readLine()!
    graph.append(Array(tmp))

    tmp = tmp.replacingOccurrences(of: "G", with: "R")
    graph2.append(Array(tmp))
}

var all = 0
var onlyRB = 0

for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] != "X" {
            bfs(graph[i][j], i, j, &graph)
            all += 1
        }

        if graph2[i][j] != "X" {
            bfs(graph2[i][j], i, j, &graph2)
            onlyRB += 1
        }

    }
}

print("\(all) \(onlyRB)")

func bfs(_ char: Character, _ x: Int, _ y: Int, _ array: inout [[Character]]) {
    var queue = [(x, y)]
    var index = 0
    
    while index < queue.count {
        let (x, y) = queue[index]
        index += 1
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<n ~= nx && 0..<n ~= ny {
                if array[nx][ny] == char {
                    array[nx][ny] = "X"
                    queue.append((nx, ny))
                }
            }
        }

    }

}