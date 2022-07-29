import Foundation

let n = Int(readLine()!)!

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

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

var result = 0

for num in nums {
    if isPrime(num) {
        result += 1
    }
}

print(result)
