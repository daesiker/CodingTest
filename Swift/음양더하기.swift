import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer = 0
    
    for idx in 0..<absolutes.count {
        if signs[idx] {
            answer += absolutes[idx]
        } else {
            answer += (absolutes[idx] * -1)
        }
    }
    
    return answer
}