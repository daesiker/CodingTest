import Foundation

let dx = [1, -1, 0, 0, 0, 0]
let dy = [0, 0, 1, -1, 0, 0]
let dz = [0, 0, 0, 0, 1, -1]

while true {
    let lrc = readLine()!.split(separator: " ").map { Int($0)! }

    if lrc == [0, 0, 0] {
        break
    }

    let l = lrc[0]
    let r = lrc[1]
    let c = lrc[2]

    var graph:[[[Character]]] = []
    var visited = Array(repeating: Array(repeating: Array(repeating: -1, count: c), count: r), count: l)
    var start = (0, 0, 0)
    var end = (0,0,0)
    for i in 0..<l {
        var tmpArray:[[Character]] = []
        for j in 0...r {
            let tmp = Array(readLine()!)
            if j == r { continue }

            tmpArray.append(tmp)
            for k in 0..<c {
                if tmp[k] == "S" {
                    start = (i, j, k)
                }

                if tmp[k] == "E" {
                    end = (i, j, k)
                }
            }
        }
        graph.append(tmpArray)
    }

    func bfs() {
        var queue = [start]
        var index = 0
        visited[start.0][start.1][start.2] = 0

        while index < queue.count {
            let (z, y, x) = queue[index]
            index += 1

            for i in 0..<6 {
                let nz = dz[i] + z
                let ny = dy[i] + y
                let nx = dx[i] + x

                if 0..<l ~= nz && 0..<r ~= ny && 0..<c ~= nx {
                    if graph[nz][ny][nx] != "#" && visited[nz][ny][nx] == -1 {
                        visited[nz][ny][nx] = visited[z][y][x] + 1
                        queue.append((nz, ny, nx))
                    }
                }
            }
        }
    }

    bfs()
    let value = visited[end.0][end.1][end.2]
    if value == -1 {
        print("Trapped!")
    } else {
        print("Escaped in \(value) minute(s).")
    }


}