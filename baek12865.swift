import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
var cost = [[0,0]]
var dp = Array.init(repeating: Array.init(repeating: 0, count: nk[1]+1), count: nk[0]+1)

for _ in 0..<nk[0] {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost.append(tmp)
}

for i in 1...nk[0] {
    for j in 1...nk[1] {
        let weight = cost[i][0]
        let value = cost[i][1]

        if j < weight {
            dp[i][j] = dp[i-1][j]
        } else {
            dp[i][j] = max(value + dp[i-1][j-weight], dp[i-1][j])
        }
    }
}

print(dp)
print(dp[nk[0]][nk[1]])