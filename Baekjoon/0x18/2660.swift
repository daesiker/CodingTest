import Foundation

let n = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: n+1)

while true {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    if tmp == [-1, -1] { break }
    graph[tmp[0]].append(tmp[1])
    graph[tmp[1]].append(tmp[0])
}

var answer = Int.max
var cDic = [Int:[Int]]()

for i in 1...n {
    var dist = Array(repeating: -1, count: n+1)
    var queue = [i]
    dist[i] = 0
    
    var idx = 0
    while idx < queue.count {
        let cur = queue[idx]
        idx += 1
        
        for nxt in graph[cur] {
            if dist[nxt] == -1 {
                dist[nxt] = dist[cur] + 1
                queue.append(nxt)
            }
        }
    }
    
    let score = dist[1...n].max()!
    answer = min(answer, score)
    cDic[score, default: []].append(i)
}

print("\(answer) \(cDic[answer]!.count)")
print(cDic[answer]!.sorted().map { String($0) }.joined(separator: " "))