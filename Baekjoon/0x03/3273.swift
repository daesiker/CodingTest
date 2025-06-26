import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let x = Int(readLine()!)!

var start = 0
var end = n-1
var answer = 0

while (start < end) {
    let sum = arr[start] + arr[end]
    if sum == x {
        answer += 1
        start += 1
    } else if sum < x {
        start += 1
    } else {
        end -= 1
    }

}

print(answer)