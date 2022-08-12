import Foundation

let n = Int(readLine()!)!

var cost:[[Int]] = []
var dp:[[Int]] = []

for _ in 0..<n {
    let tmp1 = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost.append(tmp1)
    let tmp2 = Array.init(repeating: -1, count: tmp1.count)
    dp.append(tmp2)
}

print(solution())

func solution() -> Int {

    for i in 0..<n {
        if i == 0 {
            dp[i][0] = cost[i][0]
            continue
        }
        //012
        for j in 0..<cost[i].count {

            if j == 0 {
                dp[i][j] = cost[i][j] + dp[i-1][j]
                continue
            }

            if j == i {
                dp[i][j] = cost[i][j] + dp[i-1][j-1]
                continue
            }

            dp[i][j] = cost[i][j] + max(dp[i-1][j], dp[i-1][j-1])

        }

    }

    let maxCost = dp[n-1].sorted()

    return maxCost[n-1]


}