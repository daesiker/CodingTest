import Foundation

let n = Int(readLine()!)!
var serials = [String]()

for _ in 0..<n {
    serials.append(readLine()!)
}

serials.sort {
    // 길이를 기준으로 정렬
    if $0.count == $1.count {
        // 자리수의 합 구하기
        if getSum($0) == getSum($1) {
            // 사전 순으로 비교
            return $0 < $1
        } else {
            return getSum($0) < getSum($1)
        }
    } else {
        return $0.count < $1.count
    }
}

// 자리수의 합 구하기
func getSum(_ s: String) -> Int {
    let str = Array(s).map { String($0) }
    var sum = 0
    for char in str {
        if Int(char) != nil {
            sum += Int(char)!
        }
    }
    return sum
}

serials.forEach { print($0) }