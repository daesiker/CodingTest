import Foundation

let n = Int(readLine()!)!

var stack:[String] = []
var answer:[String] = []
for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { String($0) }

    if tmp[0] == "push" {
        stack.append(tmp[1])
    } else if tmp[0] == "top" {
        if stack.isEmpty {
            answer.append("-1")
        } else {
            answer.append(stack[stack.count-1])
        }
    } else if tmp[0] == "size" {
        answer.append(String(stack.count))
    } else if tmp[0] == "empty" {
        if stack.isEmpty {
            answer.append("1")
        } else {
            answer.append("0")
        }
    } else {
        if stack.isEmpty {
            answer.append("-1")
        } else {
            answer.append(stack.removeLast())
        }
    }
}

print(answer.joined(separator : "\n"))