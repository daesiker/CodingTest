import Foundation

func solution(_ numbers:String) -> Int64 {
    var answer:String = ""
    
    let digit = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    let numbers = numbers.map { String($0) }
    var tmp = ""
    for num in numbers {
        tmp += num
        
        if digit.contains(tmp) {
            if let index = digit.firstIndex(of: tmp) {
                answer += String(index)
                tmp = ""
            }
        }
    }
    
    
    return Int64(answer)!
}