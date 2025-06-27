import Foundation

var left = Array(readLine()!)
var right: [Character] = []
let n = Int(readLine()!)!

for _ in 0..<n {
    let tmp = readLine()!

    switch tmp {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D" :
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B" :
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(tmp.last!)
    }
}

print(String(left + right.reversed()))