import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let mnk = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let (m, n, k) = (mnk[0], mnk[1], mnk[2])

    var graph = Array(repeating: Array(repeating: 0, count: n), count: m)

    for _ in 0..<k {
        let ij = readLine()!.components(separatedBy: " ").map { Int($0)! }
        graph[ij[0]][ij[1]] = 1
    }
    var answer = 0
    for i in 0..<m {
        for j in 0..<n {
            if graph[i][j] == 1 {
                bfs(&graph, i, j)
                answer += 1
            }
        }
    }

    print(answer)

}

func bfs(_ graph: inout [[Int]], _ x: Int, _ y: Int) {

    graph[x][y] = 0
    var queue = [(x,y)]
    let dx = [0,0,1,-1]
    let dy = [1,-1,0,0]

    while !queue.isEmpty {

        let (x,y) = queue.removeFirst()

        for i in 0..<4 {
            let newX = x + dx[i]
            let newY = y + dy[i]

            if 0..<graph.count ~= newX && 0..<graph[0].count ~= newY {
                if graph[newX][newY] == 1 {
                    graph[newX][newY] = 0
                    queue.append((newX, newY))
                }
            }

        }

    }




}