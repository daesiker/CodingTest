import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var stack = [Int]()
var answer = [String]()

backTracking()

print(answer.joined(separator: "\n"))

func backTracking() {

    if stack.count == m {
        answer.append(stack.map { String($0) }.joined(separator: " "))
        return
    }

    for i in 0..<n {
        stack.append(arr[i])
        backTracking()
        stack.removeLast()
    }

}