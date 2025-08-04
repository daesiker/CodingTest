import Foundation

let n = Int(readLine()!)!

var graph = [[Int]]()
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var water = 0

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    water = max(water, tmp.max()!)
    graph.append(tmp)
}

var answer = 0

for w in 0...water {
    var tmp = graph
    var count = 0
    for i in 0..<n {
        for j in 0..<n {
            if tmp[i][j] > w {
                bfs(i,j, w, &tmp)
                count += 1
            }
        }
    }

    if count > answer {
        answer = count
    }
}

print(answer)

func bfs(_ x: Int, _ y: Int, _ water: Int, _ tmp: inout [[Int]]) {
    tmp[x][y] = -1
    var queue = [(x, y)]
    var index = 0

    while index < queue.count {
        let (x, y) = queue[index]
        index += 1

        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<n ~= nx && 0..<n ~= ny {
                if tmp[nx][ny] > water {
                    tmp[nx][ny] = -1
                    queue.append((nx, ny))
                }
            }
        }
    }
}