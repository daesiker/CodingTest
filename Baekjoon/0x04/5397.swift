import Foundation


let n = Int(readLine()!)!

for _ in 0..<n {
    let tmp = Array(readLine()!)
    var left:[Character] = []
    var right:[Character] = []

    for char in tmp {
        switch char {
        case "<":
            if !left.isEmpty {
                right.append(left.removeLast())
            }
        case ">":
            if !right.isEmpty {
                left.append(right.removeLast())
            }
        case "-":
            if !left.isEmpty {
                left.removeLast()
            }
        default:
            left.append(char)
        }
    }

    print(String(left + right.reversed()))


}