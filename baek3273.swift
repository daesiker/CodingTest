import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let x = Int(readLine()!)!

var start = 0
var end = n - 1
var answer = 0

while start < end {

    let target = arr[start] + arr[end]

    if target == x {
        start += 1
        end -= 1
        answer += 1
    } else if target > x {
        end -= 1
    } else {
        start += 1
    }
    
}



print(answer)