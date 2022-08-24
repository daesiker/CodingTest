import Foundation

var stack:[String] = []
let n = Int(readLine()!)!
var breakPoint = false
for _ in 0..<n {
    let input = readLine()!
    stack = []
    breakPoint = false
    for i in input {

        if i == "(" {
            if let last = stack.last {
                if last == ")" {
                    breakPoint = true
                    break
                } else {
                    stack.append("(")
                }
            } else {
                stack.append("(")
            }
        } else {
            if let last = stack.last {
                if last == "(" {
                    let _ = stack.popLast()
                } else {
                    breakPoint = true
                    break
                }
            } else {
                breakPoint = true
                break
            }
        }

    }

    if breakPoint || !stack.isEmpty {
        print("NO")
    } else {
        print("YES")
    }

}