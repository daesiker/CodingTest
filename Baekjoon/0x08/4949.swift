import Foundation

while (true) {
    let str = readLine()!

    if str == "." {
        break
    }

    var stack:[Character] = []
    var breakPoint = false
    for s in str {
        if s == "[" || s == "(" {
            stack.append(s)
        } else if s == "]" {
            if stack.isEmpty {
                breakPoint = true
                break
            }

            if stack.last! == "[" {
                stack.removeLast()
            } else {
                breakPoint = true
                break
            }
        } else if s == ")" {
            if stack.isEmpty {
                breakPoint = true
                break
            }

            if stack.last! == "(" {
                stack.removeLast()
            } else {
                breakPoint = true
                break
            }
        }
    }

    if breakPoint || !stack.isEmpty {
        print("no")
    } else {
        print("yes")
    }
    

}