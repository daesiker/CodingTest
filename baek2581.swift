import Foundation

func isPrime(_ num: Int) -> Bool {

    if num < 4 { 
        return num == 1 ? false : true
    } else {
        for i in 2...Int(sqrt(Double(num))) {
            if (num % i == 0) { return false}
        }
    }

    return true
}

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var result:[Int] = []
var sum = 0
for i in n...m {
    if isPrime(i) {
        result.append(i)
        sum += i
    }
}

if result.count == 0 {
    print(-1)
} else {
    print(sum)
    print(result[0])
}