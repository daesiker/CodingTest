import Foundation

func solution(_ order:[Int]) -> Int {
    
    var stack = [Int]()
    var number = 1
    var answer = 0
    
    for i in 0..<order.count {
        
        while number <= order[i] {
            stack.append(number)
            number += 1
        }
        
        if stack.last! == order[i] {
            _ = stack.popLast()
            answer += 1
        } else {
            break
        }
        
    }
    return answer
}