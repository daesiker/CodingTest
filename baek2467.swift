import Foundation

let n = Int(readLine()!)!

let arr:[Int] = readLine()!.split(separator: " ").map { Int($0)! }

var start = 0
var end = n-1

var answer_start = start
var answer_end = end

var tmp = abs(arr[answer_start] + arr[answer_end])

while start < end {

    let target = arr[start] + arr[end]

    if abs(target) < tmp {
        answer_start = start
        answer_end = end

        tmp = abs(target)

        if tmp == 0 {
            break
        }
    }

    if target > 0 {
        end -= 1
    } else {
        start += 1
    }

}

print(arr[answer_start], arr[answer_end])

