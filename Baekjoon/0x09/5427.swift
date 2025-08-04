import Foundation

let T = Int(readLine()!)!

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]


for _ in 0..<T {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    var graph:[[Character]] = []
    var f_q:[(Int, Int)] = []
    var s_q:[(Int, Int)] = []
    for i in 0..<nm[1] {
        let tmp = Array(readLine()!)
        graph.append(tmp)
        for j in 0..<nm[0] {
            if graph[i][j] == "*" {
                f_q.append((i,j))
            } else if graph[i][j] == "@" {
                s_q.append((i,j))
            }
        }
    }
    var answer = 0
    while true {
        var n_f:[(Int, Int)] = []
        var n_s:[(Int, Int)] = []

        if s_q.isEmpty {
            print("IMPOSSIBLE")
            break
        }
        answer += 1
        f_bfs(&n_f)

        if (s_bfs(&n_s)) {
            print(answer)
            break
        }

        f_q = n_f
        s_q = n_s



    }

    func f_bfs(_ nq: inout [(Int,Int)]) {
        var index = 0

        while index < f_q.count {
            let (x,y) = f_q[index]
            index += 1

            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]

                if 0..<nm[1] ~= nx && 0..<nm[0] ~= ny {
                    if graph[nx][ny] == "." {
                        graph[nx][ny] = "*"
                        nq.append((nx, ny))
                    }
                }
            }
        }
    }

    func s_bfs(_ nq: inout [(Int,Int)]) -> Bool {
        var index = 0

        while index < s_q.count {
            let (x,y) = s_q[index]
            index += 1

            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]

                if 0..<nm[1] ~= nx && 0..<nm[0] ~= ny {
                    if graph[nx][ny] == "." {
                        graph[nx][ny] = "@"
                        nq.append((nx, ny))
                    }
                } else {
                    return true
                }
            }
        }

        return false
    }

}

