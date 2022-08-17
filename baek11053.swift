import Foundation

let num = Int(readLine()!)!

let cost = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array.init(repeating: 0, count: num)

for i in 0..<num {
    for j in 0..<i {
        if cost[i] > cost[j] && dp[i] < dp[j] {
            dp[i] = dp[j]
        }
    }
    dp[i] += 1
}

dp.sort()
print(dp[num-1])