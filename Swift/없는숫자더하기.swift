import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer = 0
    
    for num in 0...9 {
        if !numbers.contains(num) {
            answer += num
        }
    }
    
    return answer
}