import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var dp = Array.init(repeating: 0, count: n)
dp[0] = arr[0]

for i in 1..<n {
    dp[i] = max(arr[i], dp[i-1] + arr[i])
}

dp.sort()

print(dp[n-1])