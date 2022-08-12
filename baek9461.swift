import Foundation

let T = Int(readLine()!)!

var dp = Array.init(repeating: 0, count: 101)
dp[1] = 1
dp[2] = 1
dp[3] = 1

for _ in 0..<T {
    let num = Int(readLine()!)!

    for i in 1...num {
        if dp[i] != 0 {
            continue
        }

        dp[i] = dp[i-2] + dp[i-3]
    }
    print(dp[num])
}