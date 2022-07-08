import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 1
    var a = Int(ceil(Double(a) / Double(2)))
    var b = Int(ceil(Double(b) / Double(2)))
    
    while true {
        if a == b {
            break
        }
        
        a = Int(ceil(Double(a) / Double(2)))
        b = Int(ceil(Double(b) / Double(2)))
        answer += 1
    }
    
    return answer
}