import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var graph = [[Int]]()
var answer = 0
var queue = [(Int, Int)]()
for i in 0..<m {
    let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    for j in 0..<n {
        if tmp[j] == 1 {
            queue.append((i,j))
        }
    }
    graph.append(tmp)
}

print(bfs())

func bfs() -> Int{
    var days = -1
    let dx = [1,-1,0,0]
    let dy = [0,0,1,-1]

    while !queue.isEmpty {
        days += 1

        for _ in 0..<queue.count {
            let (x,y) = queue.removeFirst()
            for i in 0..<4 {
                let newX = x + dx[i]
                let newY = y + dy[i]

                if 0..<m ~= newX && 0..<n ~= newY {
                    if graph[newX][newY] == 0 {
                        graph[newX][newY] = graph[x][y] + 1
                        queue.append((newX, newY))
                    }
                }
            }
        }

    }
    for i in 0..<graph.count {
        for j in 0..<graph[0].count {
            if graph[i][j] == 0 {
                return -1
            }
        }
    }
    return days
}