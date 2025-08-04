import Foundation

let n = Int(readLine()!)!

var arr = [[Int]]()

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(tmp)
}

arr = arr.sorted { $0[1] != $1[1] ? $0[1] < $1[1] : $0[0] < $1[0] }
var hours = 0
var answer = 0

for i in 0..<n {
    if i == 0 {
        answer += 1
        hours = arr[i][1]
        continue
    }

    if arr[i][0] >= hours {
        answer += 1
        hours = arr[i][1]
    }
}

print(answer)


