import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var cards1 = cards1
    var cards2 = cards2
    var answer = [String]()
    for go in goal {
        
        if !cards1.isEmpty {
            if go == cards1[0] {
                answer.append(cards1.removeFirst())
            }
        } 
        if !cards2.isEmpty {
            if go == cards2[0] {
                answer.append(cards2.removeFirst())
            }
        }
    }
    
    if answer == goal { return "Yes"}
    else { return "No" }
    
}