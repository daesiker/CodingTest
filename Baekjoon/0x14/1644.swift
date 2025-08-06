import Foundation

let n = Int(readLine()!)!

if n == 1 {
    print(0)
} else {
    let primes = getPrime(n)
    var answer = 0
    var end = 0
    var sum = 0
    for start in 0..<primes.count {
        while sum < n && end < primes.count {
            sum += primes[end]
            end += 1
        }
        if sum == n {
            answer += 1
        }

        sum -= primes[start]


    }
    print(answer)

}


func getPrime(_ num: Int) -> [Int] {
    var arr = Array(repeating: true, count: num + 1)
    
    var primes = [Int]()

    for i in 2...num {
        if arr[i] == true {
            for j in stride(from: i, through: num, by: i) {
                arr[j] = false
            }

            primes.append(i)
        }
    }
    return primes
}

