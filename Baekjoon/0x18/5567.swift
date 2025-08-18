import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)

// 첫째 줄에 상근이의 동기의 수 n (2 ≤ n ≤ 500)이 주어진다. 둘째 줄에는 리스트의 길이 m (1 ≤ m ≤ 10000)이 주어진다. 
// 다음 줄부터 m개 줄에는 친구 관계 ai bi가 주어진다. (1 ≤ ai < bi ≤ n) ai와 bi가 친구라는 뜻이며, bi와 ai도 친구관계이다. 


for _ in 0..<m {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    
    graph[tmp[0]].append(tmp[1])
    graph[tmp[1]].append(tmp[0])
}

bfs()

var answer = 0

for i in 2..<visited.count {
    if visited[i] {
        answer += 1
    }
}


print(answer)


func bfs() {
    var queue = [1]
    var index = 0
    visited[1] = true
    var cnt = 0

    

    while index < queue.count {
        let node = queue[index]
        index += 1

        for new in graph[node] {
            if !visited[new] {
                visited[new] = true
                if cnt == 0 {
                    queue.append(new)
                }
                
            }
        }
        cnt = 1
    }
}


