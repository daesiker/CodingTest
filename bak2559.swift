import Foundation

let nk = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n, k) = (nk[0], nk[1])

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }

var start = 0
var sum = 0

for i in 0..<k {
    sum += arr[i]
}
var answer = sum

if n == k {
    print(answer)
} else {
    for end in k..<n {

        sum -= arr[start]
        sum += arr[end]
        start += 1
        answer = max(answer, sum)

    }

    print(answer)
}

