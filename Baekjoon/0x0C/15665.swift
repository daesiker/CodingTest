import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var stack = [Int]()
var ansSet = Set<String>()
var answer = [String]()
backTracking()
print(answer.joined(separator: "\n"))

func backTracking() {

    if stack.count == m {
        let value = stack.map { String($0) }.joined(separator: " ")
        if !ansSet.contains(value) {
            ansSet.insert(value)
            answer.append(value)
        }
        return
    }

    for i in 0..<n {
        stack.append(arr[i])
        backTracking()
        stack.removeLast()
    }

}
