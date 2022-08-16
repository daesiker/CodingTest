import Foundation

let num = Int(readLine()!)!

var dp = Array.init(repeating: 0, count: num+1)



    for i in 2...num {
        
        dp[i] = dp[i-1] + 1

        if i % 3 == 0 {
            dp[i] = min(dp[i/3] + 1, dp[i])
        }

        if i % 2 == 0 {
            dp[i] = min(dp[i/2] + 1, dp[i])
        }
    }

    print(dp[num])


