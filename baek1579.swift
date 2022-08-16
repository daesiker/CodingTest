import Foundation

let num = Int(readLine()!)!

var cost:[Int] = [0]

for _ in 0..<num {
    let tmp = Int(readLine()!)!
    cost.append(tmp)
}

var dp:[[Int]] = Array.init(repeating: [0,0], count: num+1)

for i in 1..<num+1 {
    if i == 1 {
        dp[1][0] = cost[1]
    } else if i == 2 {
        dp[2][0] = cost[1] + cost[2]
        dp[2][1] = cost[2]
    } else {
        dp[i][0] = max(dp[i-3][0], dp[i-3][1]) + cost[i-1] + cost[i]
        dp[i][1] = max(dp[i-2][0], dp[i-2][1]) + cost[i]
    }
}

print(max(dp[num][0], dp[num][1]))
