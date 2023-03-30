import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var dp = Array.init(repeating: true, count: n+1)
    for i in section {
        dp[i] = false
    }
    
    var answer = 0
    for i in 1...n {
        if !dp[i] {
            answer += 1
            for j in i...i+m-1 {
                if j <= n {
                    dp[j] = true
                }
            }
        }
    }
    return answer
}