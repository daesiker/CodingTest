import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var dp = Array(repeating: -1, count: 1000001)
    dp[x] = 0
    
    for i in x..<y {
        
        if dp[i] == -1 { continue }
        if i+n <= 1000000 {
            dp[i+n] = dp[i+n] == -1 ? dp[i] + 1 : min(dp[i+n], dp[i] + 1)
        }
        
        if i*2 <= 1000000 {
            dp[i*2] = dp[i*2] == -1 ? dp[i] + 1 : min(dp[i*2], dp[i] + 1)
        }
        
        if i*3 <= 1000000 {
            dp[i*3] = dp[i*3] == -1 ? dp[i] + 1 : min(dp[i*3], dp[i] + 1)
        }
        
    }
    
    return dp[y]
}