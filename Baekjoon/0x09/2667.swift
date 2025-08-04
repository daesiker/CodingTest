import Foundation

let n = Int(readLine()!)!

var graph:[[Character]] = []
let dx = [1, -1, 0, 0]
let dy = [0,0,1,-1]

for _ in 0..<n {
    let tmp = Array(readLine()!)
    graph.append(tmp)
}

var answer = 0
var ansArr:[Int] = []

func bfs(_ i: Int, _ j: Int) -> Int {
    var queue = [(i, j)]
    graph[i][j] = "0"
    var index = 0

    while index < queue.count {
        let (x, y) = queue[index]
        index += 1

        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<n ~= nx && 0..<n ~= ny {
                if graph[nx][ny] == "1" {
                    graph[nx][ny] = "0"
                    queue.append((nx, ny))
                }
            }


        }


    }


    return queue.count
}




for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == "1" {
            ansArr.append(bfs(i,j))
            answer += 1
        }
    }
}

print(answer)
print(ansArr.sorted().map { String($0) }.joined(separator: "\n"))