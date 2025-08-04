import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var graph:[[String]] = []

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<nm[0] {
    let tmp = readLine()!.map { String($0) }
    graph.append(tmp)
}

var visited = Array(repeating: Array(repeating: Int.max, count: nm[1]), count: nm[0])

func bfs(_ i: Int, _ j: Int) {
    visited[i][j] = 1
    var index = 0
    var queue = [(i, j)]
    
    while index < queue.count {
        let (x, y) = (queue[index].0, queue[index].1)
        graph[x][y] = "0"
        index += 1

        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<nm[0] ~= nx && 0..<nm[1] ~= ny {
                if graph[nx][ny] == "1" {
                    graph[nx][ny] = "0"
                    visited[nx][ny] = min(visited[x][y]+1, visited[nx][ny])
                    queue.append((nx, ny))
                }
            }
        }
    }

}

bfs(0,0)
print(visited[nm[0]-1][nm[1]-1])