import Foundation

let mnk = readLine()!.split(separator: " ").map { Int($0)! }

var graph = Array(repeating: Array(repeating: 0, count: mnk[1]), count: mnk[0])

for _ in 0..<mnk[2] {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    for i in tmp[1]..<tmp[3] {
        for j in tmp[0]..<tmp[2] {
            graph[i][j] = 1
        }
    }
}

var count = 0
var answer:[Int] = []

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]

func bfs(_ i: Int, _ j: Int) -> Int {
    graph[i][j] = 1
    var queue:[(Int, Int)] = [(i,j)]
    var index = 0

    while index < queue.count {
        let (x, y) = queue[index]
        index += 1

        for i in 0..<4 {
            let nx = dx[i] + x
            let ny = dy[i] + y

            if 0..<mnk[0] ~= nx && 0..<mnk[1] ~= ny {
                if graph[nx][ny] == 0 {
                    graph[nx][ny] = 1
                    queue.append((nx, ny))
                }
            }
        }
    }
    return queue.count
}

for i in 0..<mnk[0] {
    for j in 0..<mnk[1] {
        if graph[i][j] == 0 {
            count += 1
            answer.append(bfs(i, j))
        }
    }
}

print(count)
print(answer.sorted().map { String($0) }.joined(separator: " "))

