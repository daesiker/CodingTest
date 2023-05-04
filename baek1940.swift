import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)

var start = 0
var end = n-1
var answer = 0

while end > start {

    if arr[start] + arr[end] == m {
        answer += 1
        start += 1
        end -= 1
    } else if arr[start] + arr[end] < m {
        start += 1
    } else {
        end -= 1
    }

}

print(answer)