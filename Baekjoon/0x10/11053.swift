import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var dp = Array(repeating: 0, count: n)

for i in 0..<n {

    dp[i] = 1

    for j in 0..<i {
        if arr[j] < arr[i] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }

}

print(dp.max()!)