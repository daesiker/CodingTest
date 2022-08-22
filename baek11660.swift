import Foundation

let mn = readLine()!.split(separator: " ").map { Int(String($0))! }

var cost:[[Int]] = []
var preSum:[[Int]] = Array.init(repeating: Array.init(repeating: 0, count: mn[0]+1), count: mn[0]+1)

for _ in 0..<mn[0] {

    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost.append(tmp)
}

for i in 0..<mn[0] {
    for j in 0..<mn[0] {
        preSum[i+1][j+1] = (preSum[i][j+1] + preSum[i+1][j] - preSum[i][j]) + cost[i][j]
    }
}

for _ in 0..<mn[1] {

    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x1 = tmp[0]
    let y1 = tmp[1]
    let x2 = tmp[2]
    let y2 = tmp[3]
    
    let value = preSum[x2][y2] - (preSum[x1-1][y2] + preSum[x2][y1-1] - preSum[x1-1][y1-1])
    print(value)


}