import Foundation

let num = Int(readLine()!)!
let primes = primeNumber() + [0]

print(twoPointer())

func primeNumber() -> [Int] {

    let limit = 4_000_000
    var isPrime = [false, false] + Array(repeating: true, count: limit)
    var primeNumber = [Int]()

    for i in 2..<limit where isPrime[i] {

        primeNumber.append(i)

        for j in stride(from: i, to: limit+1, by: i) {
            isPrime[j] = false
        }

    }

    return primeNumber
}


func twoPointer() -> Int {
    var cnt = 0
    var pSum = 2
    var start = 0
    var end = 0

    let len = primes.count

    while start <= end, end < len-1 {
        
        if pSum < num {
            end += 1
            pSum += primes[end]
        } else if pSum > num {
            pSum -= primes[start]
            start += 1
        } else {
            cnt += 1
            pSum -= primes[start]
            start += 1

            end += 1
            pSum += primes[end]
        }

    }

    return cnt
}
