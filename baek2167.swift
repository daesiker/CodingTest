import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var arr:[[Int]] = []

for _ in 0..<nm[0] {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(tmp)
}


var sum:[[Int]] = Array.init(repeating: Array.init(repeating: 0, count: nm[1]+1), count: nm[0]+1)

let k = Int(readLine()!)!

for i in 1..<nm[0]+1 {

    for j in 1..<nm[1]+1 {
        sum[i][j] = arr[i-1][j-1] + sum[i-1][j] + sum[i][j-1] - sum[i-1][j-1]
    }
}

for _ in 0..<k {
    let ijxy = readLine()!.split(separator: " ").map { Int($0)! }

    let i = ijxy[0]
    let j = ijxy[1]
    let x = ijxy[2]
    let y = ijxy[3]

    let value = sum[x][y] - sum[i-1][y] - sum[x][j-1] + sum[i-1][j-1]
    print(value)
}