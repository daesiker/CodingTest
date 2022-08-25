import Foundation

while true {
    let input = readLine()!

    if input == "." {
        break
    }

    var stack1:[Character] = []
    var breakPoint = false

    for i in input {
        if i == "(" {
            stack1.append(i)
        } else if i == ")" {
            if let last = stack1.last {
                if last == "(" {
                    stack1.removeLast()
                } else {
                    breakPoint = true
                    break
                }
            } else {
                breakPoint = true
                break
            }
        } else if i == "[" {
            stack1.append(i)
        } else if i == "]" {
            if let last = stack1.last {
                if last == "[" {
                    stack1.removeLast()
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

    if stack1.isEmpty && !breakPoint {
        print("yes")
    } else {
        print("no")
    }

}