import Foundation

func solution(_ s:String) -> String {
    var answer:[String] = []
    let s = s.map { String($0)}
    var dic:[String:Int] = [:]
    
    for i in s {
        if let _ = dic[i] {
            dic[i]! += 1
        } else {
            dic[i] = 1
        }
    }
    
    for (k, v) in dic {
        if v == 1 {
            answer.append(k)
        }
    }
    
    answer.sort()
    
    
    return answer.joined()
}