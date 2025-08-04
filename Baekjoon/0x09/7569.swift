import Foundation

let xyz = readLine()!.split(separator: " ").map { Int($0)! }

let dx = [1, -1, 0, 0, 0, 0]
let dy = [0, 0, 1, -1, 0, 0]
let dz = [0, 0, 0, 0, 1, -1]


var graph:[[[Int]]] = []
var queue:[(Int,Int,Int)] = []
var noTomatos = 0

for i in 0..<xyz[2] {

    var tmp = [[Int]]()

    for j in 0..<xyz[1] {
        let tomatos = readLine()!.split(separator: " ").map { Int($0)! }
        tmp.append(tomatos)
        for k in 0..<xyz[0] {
            if tomatos[k] == 1 {
                queue.append((i,j,k))
            } else if tomatos[k] == 0 {
                noTomatos += 1
            }
        }
    }
    graph.append(tmp)
}

if noTomatos == 0 {
    print(0)
} else {
    let answer = bfs(queue)

    if checkAnswer() {
        print(answer)
    } else {
        print(-1)
    }
    

}

func checkAnswer() -> Bool {
    for i in 0..<xyz[2] {
        for j in 0..<xyz[1] {
            for k in 0..<xyz[0] {
                if graph[i][j][k] == 0 {
                return false
                } 
            }
        }
    }
    return true
}

func bfs(_ queue: [(Int,Int,Int)], _ days: Int = -1) -> Int {

    var index = 0
    var n_queue = [(Int, Int, Int)]()
    let n_days = days + 1
    while index < queue.count {
        let (z, y, x) = queue[index]
        index += 1
        for i in 0..<6 {
            let nx = x + dz[i]
            let ny = y + dy[i]
            let nz = z + dx[i]

            if 0..<xyz[0] ~= nx && 0..<xyz[1] ~= ny && 0..<xyz[2] ~= nz {

                if graph[nz][ny][nx] == 0 {
                    graph[nz][ny][nx] = 1
                    n_queue.append((nz, ny, nx))
                }

            }

        }
    }

    if n_queue.isEmpty {
        return n_days
    } else {
        return bfs(n_queue, n_days)
    }
}