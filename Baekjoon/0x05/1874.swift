import Foundation

let n = Int(readLine()!)!

var right = Array(1...n)

var left:[Int] = []

var answer:[String] = []




for _ in 0..<n {
    let num = Int(readLine()!)!
    var breakPoint = false
    
    while(true) {
        if !left.isEmpty && left[left.count-1] == num {
            left.removeLast()
            answer.append("-")
            break
        }

        if right.isEmpty {
            breakPoint.toggle()
            answer = []
            break
        } else {
            left.append(right.removeFirst())
            answer.append("+")
        }

    }

    if breakPoint {
        break
    }
}

print(answer.joined(separator: "\n"))

