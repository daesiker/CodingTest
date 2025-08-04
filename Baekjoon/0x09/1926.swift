import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var visited = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])

var graph:[[Int]] = []

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var answer:Int = 0
var maxVolume = 0
for _ in 0..<nm[0] {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(tmp)
}


for i in 0..<nm[0] {
    for j in 0..<nm[1] {
        if !visited[i][j] && graph[i][j] == 1 {
            answer += 1
            maxVolume = max(maxVolume, bfs(x: i, y: i))
        }
    }
}


func bfs(x: Int, y: Int) -> Int{
    visited[x][y] = true
    var queue = [(x, y)]
    var index = 0

    while index < queue.count {

        let (x, y) = (queue[index].0, queue[index].1)
        index += 1
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            if 0..<nm[0] ~= nx && 0..<nm[1] ~= ny {
                if !visited[nx][ny] && graph[nx][ny] == 1 {
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                }
            }
        }

    }

    return queue.count

}

print(answer)
print(maxVolume)