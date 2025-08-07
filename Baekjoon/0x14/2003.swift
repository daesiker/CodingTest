import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, target) = (nm[0], nm[1])
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var end = 0
var sum = 0
var answer = 0

for start in 0..<n {

    while sum < target && end < n {
        sum += arr[end]
        end += 1
    }

    if target == sum {
        answer += 1
    }

    sum -= arr[start]

}

print(answer)