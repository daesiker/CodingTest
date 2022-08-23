import Foundation

let n = Int(readLine()!)!

var cost:[(x:Int, y:Int)] = []


for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    cost.append((x: tmp[0], y: tmp[1]))
}

cost.sort(by: { $0.y != $1.y ? $0.y < $1.y : $0.x < $1.x })

var answer = 0 
var start = 0

for c in cost {
    if c.x >= start {
        start = c.y
        answer += 1
    }
}

print(answer)
