import Foundation

let n = Int(readLine()!)!

var arr = [[Int]]()

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(tmp)
}

var dp = Array(repeating: [Int](), count: n)

dp[0] = arr[0]

for i in 1..<arr.count {

    let length = arr[i].count

    for j in 0..<length {

        if j == 0 {
            dp[i].append(dp[i-1][0] + arr[i][0])
        } else if j == length-1 {
            dp[i].append(dp[i-1][dp[i-1].count-1] + arr[i][j])
        } else {
            let value = arr[i][j] + max(dp[i-1][j], dp[i-1][j-1])
            dp[i].append(value)
        }
    }
}

print(dp[dp.count-1].max()!)