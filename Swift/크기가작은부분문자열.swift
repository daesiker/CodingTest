import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var answer = 0
    let t = Array(t)
    let count = p.count
    let p = Int(p)!
    
    for i in 0..<t.count-count+1 {
        var num = ""
        
        for j in i..<i+count {
            num += String(t[j])
        }
        
        if Int(num)! <= p {
            answer += 1
        }
        
        
    }
    
    return answer
}