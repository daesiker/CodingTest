import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

let (n, m) = (nm[0], nm[1])
var graph = Array(repeating: [Int](), count: n+1)

for _ in 0..<m {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    graph[tmp[1]].append(tmp[0])
}

var dic:[Int:[Int]] = [:]
var answer = 0

for i in 1...n {
    let value = bfs(i)
    answer = max(answer, value)
    dic[value, default: []].append(i)
}

print(dic[answer]!.map { String($0) }.joined(separator: " "))

func bfs(_ first: Int) -> Int{
    var visited = Array(repeating: false, count: n+1)
    visited[first] = true
    var queue = [first]
    var index = 0
    var count = 1
    while index < queue.count {
        let node = queue[index]
        index += 1
        for new in graph[node] {
            if !visited[new] {
                count += 1
                visited[new] = true
                queue.append(new)
            }
        }
    }

    return count

}
