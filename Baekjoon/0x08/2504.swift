import Foundation

let strs = Array(readLine()!)

var stack:[Character] = []
var answer = 0
var tmp = 1
var last:Character = "A"

for str in strs {

    if str == "(" {
        tmp *= 2
        stack.append(str)
    } else if str == "[" {
        tmp *= 3
        stack.append(str)
    } else if str == ")" {
        if let last = stack.last, last == "(" {
            if recent == "(" { answer += tmp }
            stack.removeLast()
            tmp /= 2
        } else {
            answer = 0
            break
        }
    } else {
        if let last = stack.last, last == "]" {
            if recent == "]" { answer += tmp }
            stack.removeLast()
            tmp /= 3
        } else {
            answer = 0
            break
        }
    }

    last = str

}

if stack.isEmpty {
    print(answer)
} else {
    print(0)
}