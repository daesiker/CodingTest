import Foundation

let n = Int(readLine()!)!

var cost:[[Int]] = []
var dp:[[Int]] = []

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost.append(tmp)
    dp.append([-1, -1, -1])
}


print(solution())

func solution() -> Int {

    for i in 0..<n {
        if i == 0 {
            dp[i][0] = cost[i][0]
            dp[i][1] = cost[i][1]
            dp[i][2] = cost[i][2]
            continue
        }

        dp[i][0] = cost[i][0] + min(dp[i-1][1], dp[i-1][2])
        dp[i][1] = cost[i][1] + min(dp[i-1][0], dp[i-1][2])
        dp[i][2] = cost[i][2] + min(dp[i-1][1], dp[i-1][0])


    }
    let minVal = min(dp[n-1][0], dp[n-1][1], dp[n-1][2])

    return minVal

}