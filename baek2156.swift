import Foundation

let num = Int(readLine()!)!

var cost:[Int] = [0]


for _ in 0..<num {
    let tmp = Int(readLine()!)!
    cost.append(tmp)
}

func solution() -> Int {
    if num <= 2 {
        return cost.reduce(0,+)
    } else {
        var dp:[Int] = [0]
        dp.append(cost[1])
        dp.append(cost[1] + cost[2])

        for i in 3...num {
            let maxValue = max(dp[i-1], dp[i-2] + cost[i], dp[i-3] + cost[i-1] + cost[i])
            dp.append(maxValue)
        }
        dp.sort()
        return dp[num]
    }
}

print(solution())



