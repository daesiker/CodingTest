import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result:[String] = []
    
    for q in quiz {
        
        let new_quiz = q.split(separator: " ")
        
        let x = Int(new_quiz[0])!
        let y = Int(new_quiz[2])!
        let z = Int(new_quiz[4])!
        
        if new_quiz[1] == "-" {
            
            if x-y == z {
                result.append("O")
            } else {
                result.append("X")
            }
            
        } else {
            if x+y == z {
                result.append("O")
            } else {
                result.append("X")
            }
        }
        
    }
    
    return result
}