import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var answer = 0
    for num in 1...number {
        
        let tmp = division(num)
        
        if tmp > limit {
            answer += power
        } else {
            answer += tmp
        }
        
    }
    
    return answer
}

func division(_ num: Int) -> Int {
    var answer = 0
    for i in 1...num {
        if num % i == 0 {
            answer += 1
        }
    }
    
    return answer
}