import Foundation

let n = Int(readLine()!)!

var dp:[[UInt64]] = Array.init(repeating: Array.init(repeating: 0, count: 10), count: 101)

for i in 1..<10 {
    dp[1][i] = 1
}

if n == 1 {
    print(9)
} else {
    
    for i in 2...n {
        for j in 0...9 {
            if j == 0 {
                dp[i][j] = dp[i-1][1] % 1000000000
            } else if j == 9 {
                dp[i][j] = dp[i-1][8] % 1000000000
            } else {
                dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % 1000000000
            }
        }
    }

    var answer:UInt64 = 0

    for i in dp[n] {
        answer += i
    }

    print(answer )
}

