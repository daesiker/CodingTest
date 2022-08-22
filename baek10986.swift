import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

let cost = readLine()!.split(separator: " ").map { Int(String($0))! }

var preSum = Array.init(repeating: 0, count: cost.count)
var prePix = Array.init(repeating: 0, count: nm[1])

for i in 0..<nm[0] {

    if i == 0 {
        preSum[i] = cost[i]
    } else {
        preSum[i] = cost[i] + preSum[i-1]
    }

    prePix[preSum[i] % nm[1]] += 1
}

var answer = 0

for i in prePix {
    let i = Double(i)
    answer += Int(floor(i * (i-1) / 2))
}

print(answer + prePix[0])