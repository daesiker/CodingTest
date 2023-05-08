import Foundation

let n = Int(readLine()!)!

var graph:[[Int]] = {
    var graph = [[Int]]()
    for _ in 0..<n {
        let tmp = Array(readLine()!).map { Int(String($0))! }
        graph.append(tmp)
    }
    return graph
}()

var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var answer = [Int]()
var cnt = 0
let dx = [1,-1,0,0]
let dy = [0,0,1,-1]
for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == 1 && !visited[i][j] {
            let count = dfs(i,j)
            answer.append(count)
        }
    }
}

func dfs(_ i: Int, _ j: Int) -> Int {
    var count = 0
    var queue = [(i,j)]

    while !queue.isEmpty {
        let (x,y) = queue.removeFirst()
        visited[x][y] = true
        count += 1
        for i in 0..<4 {
            let newX = x + dx[i]
            let newY = y + dy[i]

            if 0..<n ~= newX && 0..<n ~= newY {
                if graph[newX][newY] == 1 && !visited[newX][newY] {
                    graph[newX][newY] = 0
                    queue.append((newX, newY))
                }
            }
        }
    }
    return count 
}

answer.sort(by: <)

print(answer.count)
for ans in answer {
    print(ans)
}

