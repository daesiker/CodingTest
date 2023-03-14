import Foundation

func solution(_ my_string:String) -> Int {
    let my_string = my_string.split(separator: " ")
    var answer = 0
    var tmp = "+"
    for i in 0..<my_string.count {
        
        if i % 2 == 0 {
            
            if tmp == "+" {
                answer += Int(my_string[i])!
            } else {
                answer -= Int(my_string[i])!
            }
            
        } else {
            tmp = String(my_string[i])
        }
        
    }
    
    
    return answer
}