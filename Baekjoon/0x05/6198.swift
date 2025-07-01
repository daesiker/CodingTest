import Foundation

let n = Int(readLine()!)!
var answer = 0
var stack:[Int] = []

for i in 0..<n {
    let tmp = Int(readLine()!)!

    if stack.isEmpty {
        stack.append(tmp)
        continue
    }

    while !stack.isEmpty {
        let last = stack.last,
        last <= tmp {
            stack.removeLast()
        }

    }
    answer += stack.count
    stack.append(tmp)
    
}

print(answer)