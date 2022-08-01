import Foundation

func isPrime(_ num: Int) -> Bool {

    if num < 4 {
        return num == 1 ? false : true
    } else {
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 { return false }
        }
    }

    return true

}

while true {
    let n = Int(readLine()!)!

    if n == 0 {
        break
    }
    var count = 0
    for i in n+1...2*n {
        if isPrime(i) { count += 1 }
    }
    print(count)
}