import Foundation

var dp = [0, 1, 3]

for i in 3...1001 {
    dp.append( (dp[i-2] * 2 + dp[i-1]) % 10007  )
}

let n = Int(readLine()!)!

print(dp[n])