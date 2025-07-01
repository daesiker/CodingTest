import Foundation

let k = Int(readLine()!)!

var stack:[Int] = []
for _ in 0..<k {
    let tmp = Int(readLine()!)!

    if tmp == 0 {
        stack.removeLast()
    } else {
        stack.append(tmp)
    }

}

print(stack.reduce(0) { $0 + $1 })