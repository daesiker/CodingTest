import Foundation

func solution(_ sticker:[Int]) -> Int{
    let size = sticker.count
    if size == 1 { return sticker[0] }
    else if size == 2 { return max(sticker[0], sticker[1])}
    var answer = 0
    var dp = Array(repeating: Array(repeating: 0, count: size), count: 2)
    dp[0][0] = sticker[0]
    dp[0][1] = sticker[0]
    dp[1][1] = sticker[1]
    for i in 2..<size-1 {
        dp[0][i] = max(dp[0][i-2] + sticker[i], dp[0][i-1])
    }
    for i in 2..<size {
        dp[1][i] = max(dp[1][i-2] + sticker[i], dp[1][i-1])
    }
    answer = max(dp[0][size-2], dp[1][size-1])
    return answer
}