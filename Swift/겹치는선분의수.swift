import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var answer = 0
    var dict:[[Int]:Int] = [:]
    
    for line in lines {
        
        for i in line[0]..<line[1] {
            if let _ = dict[[i, i+1]] {
                dict[[i, i+1]]! += 1
            } else {
                dict[[i, i+1]] = 1
            }
        }
        
    }
    
    for (_,v) in dict {
        if v > 1 {
            answer += 1
        }
    }
    
    return answer
}