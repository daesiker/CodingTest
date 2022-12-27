import Foundation

let num = Int(readLine()!)!

var arr:[[Int]] = []

for _ in 0..<100 {
    let tmp = Array.init(repeating: 0, count: 100)
    arr.append(tmp)
}

for _ in 0..<num {

    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0]-1
    let m = nm[1]-1
    for i in n..<n+10 {
        for j in m..<m+10 {
            arr[i][j] = 1
        }
    }


}

var answer = 0

for i in 0..<100 {
    for j in 0..<100 {
        answer += arr[i][j]
    }
}

print(answer)