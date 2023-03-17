import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    var answer = 0
    var min = 1000
    for a in array {
        
        let value = n - a
        
        if abs(min) == abs(value) {
            if min < value {
                min = value
                answer = a
            }
            
            
        } else if abs(min) > abs(value) {
            min = value
            answer = a
        }
        
        
        
    }
    
    return answer
}