import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var preSum:[Int] = []
var answer = 0
for i in 0..<arr.count {

    if i < nk[1] {
        answer += arr[i]
        continue
    }

    if i == nk[1] {
        preSum.append(answer)
    }

    let value = preSum[i-nk[1]] + arr[i] - arr[i-nk[1]]
    preSum.append(value)
    answer = max(answer, value)
}

print(answer)