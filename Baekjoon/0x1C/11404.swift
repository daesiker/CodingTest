// n(2 ≤ n ≤ 100)개의 도시가 있다. 
// 그리고 한 도시에서 출발하여 다른 도시에 도착하는 m(1 ≤ m ≤ 100,000)개의 버스가 있다.
//  각 버스는 한 번 사용할 때 필요한 비용이 있다.

// 모든 도시의 쌍 (A, B)에 대해서 도시 A에서 B로 가는데 필요한 비용의 최솟값을 구하는 프로그램을 작성하시오.
// 첫째 줄에 도시의 개수 n이 주어지고 둘째 줄에는 버스의 개수 m이 주어진다. 
// 그리고 셋째 줄부터 m+2줄까지 다음과 같은 버스의 정보가 주어진다. 
// 먼저 처음에는 그 버스의 출발 도시의 번호가 주어진다. 
// 버스의 정보는 버스의 시작 도시 a, 도착 도시 b, 한 번 타는데 필요한 비용 c로 이루어져 있다. 
// 시작 도시와 도착 도시가 같은 경우는 없다. 비용은 100,000보다 작거나 같은 자연수이다.

// 시작 도시와 도착 도시를 연결하는 노선은 하나가 아닐 수 있다.

import Foundation

let INF = Int.max
let n = Int(readLine()!)!
let m = Int(readLine()!)!

var dist = Array(repeating: Array(repeating: INF, count: n), count: n)

for i in 0..<n {
    dist[i][i] = 0
}

for _ in 0..<m {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    let (u, v, w) = (tmp[0] - 1, tmp[1] - 1, tmp[2])  // 1-based → 0-based 변환
    dist[u][v] = min(dist[u][v], w)
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if dist[i][k] < INF && dist[k][j] < INF {
                dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])
            }   
        }
    }
}


for d in dist {
    print(d.map {String($0)}.joined(separator: " "))
}


