import Foundation

let n = Int(readLine()!)!



var num:[Int] = []

for _ in 0..<n {
    let tmp = Int(readLine()!)!
    num.append(tmp)
}

num.sort()
var re_num:[Int] = []

for i in 1..<num.count {
    re_num.append(num[i] - num[i-1])
}

func findGCD(_ a: Int, _ b: Int) -> Int {
    var num = b
    var div = a
    var rest = num % div

    while rest != 0 {
        num = div
        div = rest
        rest = num % div
    }
    return div
}

var gcd = re_num[0]

for i in 1..<re_num.count {
    gcd = findGCD(gcd, re_num[i])
}

var result = Set<Int>()

for i in 2..<Int(pow(Double(gcd), Double(0.5)))+1 {
    if gcd % i == 0 {
        result.insert(i)
        result.insert(gcd / i)
    }
}

result.insert(gcd)

var answer = Array(result)
answer.sort()

print(answer.map { String($0) }.joined(separator: " "))
