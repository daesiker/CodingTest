import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var answer = 0
    var dic:[Int:Int] = [:]
    var tmp = 0
    for t in tangerine {
        if let _ = dic[t] {
            dic[t]! += 1
        } else {
            dic[t] = 1
        }
    }
    
    for v in dic.values.sorted(by: >) {
        tmp += v
        answer += 1
        if tmp >= k {
            break
        }
        
    }
    
    return answer
}