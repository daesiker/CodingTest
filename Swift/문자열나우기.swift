import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    
    var tmp = ""
    var tc = 0
    var oc = 0
    
    for c in s {
        
        if tmp == "" {
            tmp = String(c)
            tc = 1
            oc = 0
        } else {
            if tmp == String(c) {
                tc += 1
            } else {
                oc += 1
            }
        }
        
        if tc == oc {
            answer += 1
            tmp = ""
            tc = 0
            oc = 0
        }
        
    }
    
    if tmp != "" {
        answer += 1
    }
    
    
    return answer
}