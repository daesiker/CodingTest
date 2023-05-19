import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var answer = 0
    var graph = Array(repeating:[Int](), count: n+1)
    var visited = Array(repeating: -1, count: n+1)
    for e in edge {
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    
    var queue = [(1,0)]
    
    while !queue.isEmpty {
        var (node, count) = queue.removeFirst()
        
        if visited[node] == -1 {
            visited[node] = count
            count += 1
            for n in graph[node] {
                queue.append((n,count))
            }
        }
    }
    
    let maxValue = visited.max()!
    for i in visited {
        if i == maxValue {
            answer += 1
        }
    }
    
    return answer
}