import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var answer = [Int]()
    
    for pho in photo {
        var tmp = 0
        for p in pho {
            
            if let index = name.firstIndex(of: p) {
                tmp += yearning[index]
            }
            
        }
        answer.append(tmp)
        
    }
    
    
    
    return answer
}