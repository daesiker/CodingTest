import Foundation

let rc = readLine()!.split(separator: " ").map { Int($0)! }

var graph:[[String]] = []
var fires:[(Int, Int)] = []
var jihoons: [(Int, Int)] = []
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var answer = 0

for i in 0..<rc[1] {
    let tmp = Array(readLine()!).map { String($0) }
    for j in 0..<rc[0] {
        if tmp[j] == "J" {
            jihoons.append((i, j))
        }

        if tmp[j] == "F" {
            fires.append((i, j))
        }
    }

    graph.append(tmp)
}

while true {

    var n_j = [(Int, Int)]()
    var n_f = [(Int, Int)]()

    if jihoons.isEmpty { 
        print("IMPOSSIBLE")
        break
    }

    answer += 1

    moveFire(&n_f)

    if moveJihoon(&n_j) {
        print(answer)
        break
    }

    jihoons = n_j
    fires = n_f


}


func moveFire(_ queue: inout [(Int, Int)]) {

    for (x, y) in fires {
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<rc[1] ~= nx && 0..<rc[0] ~= ny {
                if graph[nx][ny] == "." {
                    graph[nx][ny] = "F"
                    queue.append((nx, ny))
                }
            }
        }
    }
}

func moveJihoon(_ queue: inout [(Int, Int)]) -> Bool {

    for (x, y) in jihoons {
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0..<rc[1] ~= nx && 0..<rc[0] ~= ny {
                if graph[nx][ny] == "." {
                    graph[nx][ny] = "J"
                    queue.append((nx, ny))
                }
            } else {
                return true
            }
        }
    }

    return false
}



