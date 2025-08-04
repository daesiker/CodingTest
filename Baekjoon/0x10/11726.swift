import Foundation

let n = Int(readLine()!)!

var dp = Array(repeating: 0, count: 1001)

dp[0] = 1
dp[1] = 1

for i in 2...1000 {
    dp[i] = (dp[i-1] + dp[i-2]) % 10007

}

print(dp[n])