import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n,m) = (nm[0], nm[1])

var graph = [[Int]]()
var answer = 0
let dx = [0,0,1,-1]
let dy = [1,-1,0,0]
for _ in 0..<n {
    let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    graph.append(tmp)
}

makeWall(graph, 0)
print(answer)
func makeWall(_ graph: [[Int]], _ cnt: Int) {
    var graph = graph
    if cnt == 3 {
        bfs(graph)
    } else {
        for i in 0..<n {
            for j in 0..<m {
                if graph[i][j] == 0 {
                    graph[i][j] = 1
                    makeWall(graph, cnt+1)
                    graph[i][j] = 0
                }
            }
        }
    }
}

func bfs(_ graph:[[Int]]) {
    var graph = graph
    var queue = [(Int, Int)]()
    var count = 0

    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 2 {
                queue.append((i,j))
            }
        }
    }

    while !queue.isEmpty {
        let (x,y) = queue.popLast()!

        for i in 0..<4 {
            let newX = x + dx[i]
            let newY = y + dy[i]

            if 0..<n ~= newX && 0..<m ~= newY {
                if graph[newX][newY] == 0 {
                    graph[newX][newY] = 2
                    queue.append((newX, newY))
                }
            }
        }
    }

    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 0 {
                count += 1
            }
        }
    }

    answer = max(count, answer)
}