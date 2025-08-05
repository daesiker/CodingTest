import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, s) = (nm[0], nm[1])


let arr = readLine()!.split(separator: " ").map { Int($0)! }
var end = 0
var sum = 0
var answer = Int.max

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

if answer == Int.max {
    print(0)
} else {
    print(answer)
}