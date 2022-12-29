import Foundation



let num = Int(readLine()!)!

var answer = 0

var isPrime = Array(repeating: true, count: num + 1)

isPrime[0] = false
isPrime[1] = false

if num >= 4 {
    for i in 2...Int(sqrt(Double(num))) {
        for j in 2...num/i {
            isPrime[i*j] = false
        }
    }
}

for i in 3..<isPrime.count {

    if isPrime[i] { 
        var sum = 0

        for j in i..<isPrime.count {

            if isPrime[j] {
                sum += j
                if sum == num {
                    answer += 1
                }

            }

        }
    }

}

print(answer)