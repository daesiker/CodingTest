import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted(by:<)
    let count = score.count % m
    var dp = Array.init(repeating: 0, count: k+1)
    var answer = 0
    for i in stride(from: count, to: score.count, by: m) {
        dp[score[i]] += 1
    }
    
    for (i,j) in dp.enumerated() {
        answer += (i * j * m)
    }
    
    return answer
}