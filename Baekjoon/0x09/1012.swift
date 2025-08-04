import Foundation

let n = Int(readLine()!)!
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<n {
    let mnk = readLine()!.split(separator: " ").map { Int($0)! }

    var graph = Array(repeating: Array(repeating: 0, count: mnk[0]), count: mnk[1])
    var visited = Array(repeating: Array(repeating: false, count: mnk[0]), count: mnk[1])

    for _ in 0..<mnk[2] {
        let mn = readLine()!.split(separator: " ").map { Int($0)! }
        graph[mn[1]][mn[0]] = 1
    }

    var answer = 0

    for i in 0..<mnk[1] {
        for j in 0..<mnk[0] {
            if graph[i][j] == 1 && !visited[i][j] {
                answer += 1
                bfs(i, j, graph, &visited)
            }
        }
    }


    print(answer)


}

func bfs(_ x: Int, _ y: Int, _ graph: [[Int]], _ visited: inout [[Bool]]) {

    var queue = [(x,y)]
    visited[x][y] = true
    var index = 0

    while index < queue.count {
        let (x, y) = queue[index]
        index += 1

        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<visited.count ~= nx && 0..<visited[0].count ~= ny {
                if !visited[nx][ny] && graph[nx][ny] == 1 {
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                }
            }
        }


    }


}