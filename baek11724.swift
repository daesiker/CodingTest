import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,m) = (nm[0], nm[1])

var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
for _ in 0..<m {
    let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    graph[tmp[0]].append(tmp[1])
    graph[tmp[1]].append(tmp[0])
}
var answer = 0

for i in 1...n {
    if !visited[i] {
        answer += 1
        bfs(i)
    }
}

print(answer)

func bfs(_ node: Int) {

    var queue = [node]

    while !queue.isEmpty {

        let x = queue.popLast()!
        visited[x] = true
        for new in graph[x] {
            if !visited[new] {
                queue.append(new)
            }
        }
    }
}