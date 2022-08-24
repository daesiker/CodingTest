import Foundation

let n = Int(readLine()!)!

let distance = readLine()!.split(separator: " ").map { Int(String($0))! }
let cost = readLine()!.split(separator: " ").map { Int(String($0))! }

var minValue = cost[0]
var answer = 0

for i in 0..<n-1 {

    if cost[i] < minValue {
        minValue = cost[i]
    }

    answer += (minValue * distance[i])

}

print(answer)