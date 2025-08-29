import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var stack = [Int]()
var visited = Array(repeating: false, count: n)

var setArr = Set<[Int]>()
var answer = [String]()

backTracking()

print(answer.joined(separator: "\n"))

func backTracking() {

    if stack.count == m {
        if !setArr.contains(stack) {
            setArr.insert(stack)
            answer.append(stack.map { String($0) }.joined(separator: " "))
        }
        return
    }

    for i in 0..<n {
        if !visited[i] {
            visited[i] = true
            stack.append(arr[i])
            backTracking()
            stack.removeLast()
            visited[i] = false
        }

    }

}
