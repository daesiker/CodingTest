import Foundation

let n = Int(readLine()!)!

typealias Element = (value: Int, index: Int)

var arr = readLine()!.split(separator: " ").map { Int($0)! }
var stack:[Element] = []
var answer: [Int] = []

for i in 0..<n {
    let top = Element(value: arr[i], index: i+1)
    
    while (!stack.isEmpty) {
        let index = stack.count-1
        
        if stack[index].value > top.value {
            break
        } else {
            stack.removeLast()
        }
    }

    if stack.isEmpty {
        answer.append(0)
        stack.append(top)
    } else {
        answer.append(stack[stack.count-1].index)
        stack.append(top)
    }

}

print(answer.map { String($0) }.joined(separator: " "))
