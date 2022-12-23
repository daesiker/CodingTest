import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

let target = Int(readLine()!)!

var answer:Int = 0

for a in arr {
    if a == target {
        answer += 1
    }
}
print(answer)