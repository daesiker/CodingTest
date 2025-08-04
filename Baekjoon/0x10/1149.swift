import Foundation

let n = Int(readLine()!)!

var houses:[[Int]] = []
var dp = Array(repeating: [0,0,0], count: n)

for _ in 0..<n {

    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    houses.append(tmp)
}


for i in 0..<n {
    if i == 0 {
        dp[i] = houses[i]
        continue
    }

    dp[i][0] = houses[i][0] + min(dp[i-1][1], dp[i-1][2])
    dp[i][1] = houses[i][1] + min(dp[i-1][0], dp[i-1][2])
    dp[i][2] = houses[i][2] + min(dp[i-1][1], dp[i-1][0])

}

print(min(dp[n-1][0], dp[n-1][1], dp[n-1][2]))





