import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
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


for i in nm[0]...nm[1] {
    if isPrime(i) {
        print(i)
    }
}