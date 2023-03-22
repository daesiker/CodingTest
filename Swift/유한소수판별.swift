import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    var a = a
    var b = b
    let minValue = min(a, b)
    
    var answer:[Int] = []
    
    for i in 1...minValue {
        if a % i == 0 && b % i == 0 {
            a /= i
            b /= i
        }
    }
    
    for i in 1...b {
        
        if b % i == 0 {
            if isPrime(i) {
                answer.append(i)
            }
        }
        
    }
    
    print(answer)
    
    for i in answer {
        if [2,5].contains(i) {
            continue
        } else {
            return 2
        }
    }
    
    return 1
}

func isPrime(_ num: Int) -> Bool {
    if(num<4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}
