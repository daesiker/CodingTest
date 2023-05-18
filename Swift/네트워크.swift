import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited = Array(repeating: false, count: n)
    var answer = 0
    
    func bfs(_ node: Int) {
        var queue = [node]
        while !queue.isEmpty {
            let newN = queue.popLast()!
            visited[newN] = true
            for i in 0..<computers[newN].count {
                if computers[newN][i] == 1 && !visited[i] {
                    queue.append(i)
                }
            }   
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            bfs(i)
            answer += 1
        }
    }
    return answer
}