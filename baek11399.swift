import Foundation

let _ = Int(readLine()!)!

var cost = readLine()!.split(separator: " ").map { Int(String($0))! }

cost.sort()
var preSum = Array.init(repeating: 0, count: cost.count)
preSum[0] = cost[0]
var answer = cost[0]
for i in 1..<cost.count {
    preSum[i] = preSum[i-1] + cost[i]
    answer += preSum[i]
}
print(answer)