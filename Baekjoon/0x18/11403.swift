let n = Int(readLine()!)!
var graph = (0..<n).map { _ in readLine()!.split(separator: " ").map {Int($0)!}}


for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if graph[i][k] == 1 && graph[k][j] == 1 {
                graph[i][j] = 1
            }
        }
    }
}

// 출력
for i in 0..<n {
    let line = graph[i].map { String($0) }.joined(separator: " ")
    print(line)
}