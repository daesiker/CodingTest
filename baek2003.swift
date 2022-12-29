import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var answer = 0

for i in 0..<arr.count {
    var sum = 0
    for j in i..<arr.count {
        sum += arr[j]
        if sum == NM[1] {
            answer += 1
        }
    }
}
print(answer)