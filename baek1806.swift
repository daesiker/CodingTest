import Foundation

let ns = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n,s) = (ns[0], ns[1])

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }

var answer = Int.max
var end = 0
var sum = 0

for start in 0..<n {

    while sum < s && end < n {
        sum += arr[end]
        end += 1
    }

    if sum >= s {
        answer = min(answer, end - start)
    }

    sum -= arr[start]
}

print(answer == Int.max ? 0 : answer)