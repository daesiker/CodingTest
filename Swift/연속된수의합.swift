import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var answer:[Int] = []
    var total = total
    
    for i in 1..<num {
        total -= i
    }
    
    var n = total / num
    answer.append(n)
    for i in 0..<num-1 {
        n += 1
        answer.append(n)
    }
    
    
    
    return answer
}