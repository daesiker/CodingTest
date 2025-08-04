import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var arr = [Int]()

for _ in 0..<n {
    let tmp = Int(readLine()!)!
    arr.append(tmp)
}

arr.sort()

var answer = Int.max
var end = 0

for start in 0..<n {

    while end < n {
        let dif = abs(arr[end] - arr[start])

        if dif >= m {
            answer = min(answer, dif)
            break
        }

        if dif < m {
            end += 1
        }
    }
}

print(answer)