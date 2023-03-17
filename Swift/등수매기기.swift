import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    
    let score = score.enumerated().map { [$0.1[0] + $0.1[1], $0.0] }.sorted(by: >)
    
    var answer = Array(repeating: 0, count: score.count)
    
    var tmp = 1
    for i in 0..<score.count {
        
        if i == 0 {
            answer[score[i][1]] = tmp
            continue
        }
        
        if score[i][0] == score[i-1][0] {
            answer[score[i][1]] = tmp
        } else {
            answer[score[i][1]] = i+1
            tmp = i+1
        }
        
        
    }
    
    return answer
}