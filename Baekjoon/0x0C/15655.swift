import Foundation

// 4 2
// 9 8 7 1

// 1 7
// 1 8
// 1 9
// 7 8
// 7 9
// 8 9

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var stack = [Int]()
var answer = [String]()

backTracking()
print(answer.joined(separator: "\n"))

func backTracking(_ start: Int = 0) {

    if stack.count == m {
        answer.append(stack.map { String($0) }.joined(separator: " "))
        return
    }

    for i in start..<n {
        if !stack.contains(arr[i]) {
            stack.append(arr[i])
            backTracking(i)
            stack.removeLast()
        }
    }
}

