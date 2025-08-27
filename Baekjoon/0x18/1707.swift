import Foundation

let k = Int(readLine()!)!


func solution() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, m) = (nm[0], nm[1])

    var graph = Array(repeating: [Int](), count: n + 1)

    for _ in 0..<m {
        let tmp = readLine()!.split(separator: " ").map { Int($0)! }
        graph[tmp[0]].append(tmp[1])
        graph[tmp[1]].append(tmp[0])
    }

    func isBipartite() -> Bool {
        var colors = Array(repeating: -1, count: n+1)
        
        for start in 1...n where colors[start] == -1 {
            var queue = [start]
            var i = 0
            colors[start] = 0
            
            while i < queue.count {
                let cur = queue[i]
                i += 1
                
                for next in graph[cur]  {
                    if colors[next] == colors[cur] {
                        return false
                    } else if colors[next] == -1 {
                        colors[next] = 1 - colors[cur]
                        queue.append(next)
                    }
                }
            }
        }
        return true
    }

    print(isBipartite() ? "YES" : "NO")
}



for _ in 0..<k {
    solution()
}