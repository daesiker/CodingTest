import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n,m) = (nm[0], nm[1])
var graph:[[Int]] = []

for _ in 0..<n {
    let tmp = Array(readLine()!).map { Int(String($0))! }
    graph.append(tmp)
}

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]

var queue = [(0,0)]


while !queue.isEmpty {
    let (x,y) = queue.removeFirst()
    for i in 0..<4 {

        let newX = x+dx[i]
        let newY = y+dy[i]

        if 0..<n ~= newX && 0..<m ~= newY {

            if graph[newX][newY] == 1 {
                graph[newX][newY] = graph[x][y] + 1
                queue.append((newX, newY))
            }
        }
    }
}

print(graph[n-1][m-1])
