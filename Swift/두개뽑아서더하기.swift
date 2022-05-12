import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result:[Int] = []
    
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            let num = numbers[i] + numbers[j]
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    
    return result.sorted()
}