import Foundation

let n = Int(readLine()!)!

var cost = [0]

for _ in 0..<n {
    cost.append(Int(readLine()!)!)
}

var dp = Array(repeating: [0,0], count: n+1)

for i in 1..<n+1 {
    if i == 1 {
        dp[i][0] = cost[i]
    } else if i == 2 {
        dp[i][0] = cost[1] + cost[2]
        dp[i][1] = cost[2]
    } else {
        dp[i][0] = max(dp[i-3][0], dp[i-3][1]) + cost[i-1] + cost[i]
        dp[i][1] = max(dp[i-2][0], dp[i-2][1]) + cost[i]
    }
}

print(max(dp[n][0], dp[n][1]))




