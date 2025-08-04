import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]

var graph:[[Int]] = []
var queue:[(Int, Int)] = []
var answer = -1

for i in 0..<nk[1] {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<nk[0] {
        if tmp[j] == 1 {
            queue.append((i,j))
        }
    }
    graph.append(tmp)
}

while true {
    var n_queue = [(Int, Int)]()
    answer += 1
    bfs(&n_queue)

    if n_queue.isEmpty {
        break
    }

    queue = n_queue

}

print(checkAnswer())

func checkAnswer() -> Int {

    for i in 0..<nk[1] {
        for j in 0..<nk[0] {
            if graph[i][j] == 0 {
                return -1
            }
        }
    }
    return answer
}


func bfs(_ next: inout [(Int, Int)]) {

    for (x, y) in queue {
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<nk[1] ~= nx && 0..<nk[0] ~= ny {
                if graph[nx][ny] == 0 {
                    graph[nx][ny] = 1
                    next.append((nx, ny))

                }
            }
        }
    }

}


