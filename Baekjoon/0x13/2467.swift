import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }

var start = 0
var end = n-1

var answer_start = start
var answer_end = end
var answer = abs(arr[start] + arr[end])

while start < end {

    let mid = arr[start] + arr[end]

    if answer > abs(mid) {
        answer = abs(mid)
        answer_start = start
        answer_end = end
    }

    if mid == 0 {
        break
    } else if mid < 0 {
        start += 1
    } else {
        end -= 1
    }

}

print(arr[answer_start], arr[answer_end])