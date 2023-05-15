import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }

var dp = Array(repeating: 0, count: n)

for i in 0..<n {
    for j in 0..<i {

        if arr[i] > arr[j] && dp[i] < dp[j] {
            dp[i] = dp[j]
        }
    }
    dp[i] += 1
}

dp.sort()
print(dp[n-1])