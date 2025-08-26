import Foundation


// 첫째 줄에는 지역의 개수 n (1 ≤ n ≤ 100)과 예은이의 수색범위 m (1 ≤ m ≤ 15), 길의 개수 r (1 ≤ r ≤ 100)이 주어진다.
// 둘째 줄에는 n개의 숫자가 차례대로 각 구역에 있는 아이템의 수 t (1 ≤ t ≤ 30)를 알려준다.
// 세 번째 줄부터 r+2번째 줄 까지 길 양 끝에 존재하는 지역의 번호 a, b, 그리고 길의 길이 l (1 ≤ l ≤ 15)가 주어진다.
// 지역의 번호는 1이상 n이하의 정수이다. 두 지역의 번호가 같은 경우는 없다.


let nmr = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, r) = (nmr[0], nmr[1], nmr[2])
let INF = Int.max / 2
let items = readLine()!.split(separator: " ").map { Int($0)! }

var graph = Array(repeating: Array(repeating: INF, count: n), count: n)

for i in 0..<n {
    graph[i][i] = 0
}

for _ in 0..<r {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    let (start, end, dist) = (tmp[0]-1, tmp[1]-1, tmp[2])
    graph[start][end] = min(graph[start][end], dist)
    graph[end][start] = min(graph[end][start], dist)
}


for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if graph[i][k] < INF && graph[k][j] < INF {
                graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])
            } 
        }
    }
}

var answer = 0

for i in 0..<n {
    var tmp = 0
    for j in 0..<n {
        if graph[i][j] <= m {
            tmp += items[j]
        }
    }

    answer = max(tmp, answer)
}

print(answer)