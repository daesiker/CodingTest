import Foundation

var str = Array(readLine()!)

var stack:[Character] = []
let ppap:[Character] = ["P", "P", "A", "P"] 

for i in 0..<str.count {

    stack.append(str[i])

    if stack.count >= 4 {
        let tmp = Array(stack[stack.count-4..<stack.count])
        if tmp == ppap {
            for _ in 0..<4 {
                stack.removeLast()
            }
            stack.append("P")
        }
        
    }
}


if stack == ppap || stack == ["P"] {
    print("PPAP")
} else {
    print("NP")
}
