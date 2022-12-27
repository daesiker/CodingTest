import Foundation

var arr:[[Int]] = []

for _ in 0..<9 {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(tmp)
}

var maxNum = 0
var answer = ""

for i in 0..<9 {
    for j in 0..<9 {
        if arr[i][j] >= maxNum {
            maxNum = arr[i][j]
            answer = "\(i+1) \(j+1)"
        }
    }
}

print(maxNum)
print(answer)
