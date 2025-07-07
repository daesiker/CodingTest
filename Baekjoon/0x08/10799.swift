import Foundation

let tmp = Array(readLine()!)

var stack:[Character] = []
var isL = false
var answer = 0

for t in tmp {
    if t == "(" {
        stack.append(t)
        isL = true

    } else {
        if stack.isEmpty {
            continue
        }

        if stack.last! == "(" && isL {
            stack.removeLast()
            answer += stack.count
            isL = false
        } else if stack.last == "(" && !isL {
            stack.removeLast()
            answer += 1
        }
    }
}

print(answer)