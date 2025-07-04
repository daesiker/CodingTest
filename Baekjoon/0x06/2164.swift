import Foundation

let n = Int(readLine()!)!

if n == 1 {
    print(1)
} else {
    var stack = Array(1...n)
    var index = 0
    while (true) {

        stack[index] = 0
        stack.append(stack[index+1])
        stack[index+1] = 0

        if stack[stack.count-2] == 0 {
            print(stack[stack.count-1])
            break
        }

        index += 2
    }
}





