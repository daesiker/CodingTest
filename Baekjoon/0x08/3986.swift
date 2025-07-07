import Foundation

let n = Int(readLine()!)!

var answer = 0

for _ in 0..<n {
    let tmp = Array(readLine()!)

    var stack:[Character] = []

    for char in tmp {
        if let last = stack.last {
            if last == char {
                stack.removeLast()

            } else {
                stack.append(char)
            }
        } else {
            stack.append(char)
        }
    }

    if stack.isEmpty {
        answer += 1
    }
}

print(answer)