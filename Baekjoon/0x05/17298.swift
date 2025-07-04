import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int($0)! }

var stack:[Int] = []
var answer:[Int] = Array(repeating: -1, count: n)

for i in 0..<n {

    while (!stack.isEmpty && arr[stack[stack.count-1]] < arr[i]) {
        answer[stack.removeLast()] = arr[i]
    }

    stack.append(i)

}

print(answer.map { String($0) }.joined(separator: " "))