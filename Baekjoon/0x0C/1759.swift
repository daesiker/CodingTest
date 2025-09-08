
import Foundation

let lc = readLine()!.split(separator: " ").map { Int($0)! }
let (l, c) = (lc[0], lc[1])

let str = readLine()!.split(separator: " ").map { String($0) }.sorted()

let moSet:Set<String> = ["a", "e", "i", "o", "u"]

var stack = [String]()
var algo = (0, 0)

var answer = [String]()

backTracking()

print(answer.joined(separator: "\n"))

func backTracking(_ start: Int = 0) {

    if stack.count == l {
        if algo.0 >= 1 && algo.1 >= 2 {
            let value = stack.joined(separator: "")
            answer.append(value)
        }
        return 
    }

    for i in start..<c {
        if !stack.contains(str[i]) {
            if moSet.contains(str[i]) {
                algo.0 += 1
                stack.append(str[i])
                backTracking(i)
                stack.removeLast()
                algo.0 -= 1
            } else {
                algo.1 += 1
                stack.append(str[i])
                backTracking(i)
                stack.removeLast()
                algo.1 -= 1
            }
            
        }
    }
}

