import Foundation

let ns = readLine()!.split(separator: " ").map { Int($0)! }

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var visited = Array(repeating: false, count: ns[0])

var sum = 0
var answer = 0

func backTracking(_ start: Int = 0, _ depth:Int = 0) {

    if sum == ns[1] && depth >= 1 {
        answer += 1
    }

    for i in start..<arr.count {
        if !visited[i] {
            visited[i] = true
            sum += arr[i]
            backTracking(i, depth+1)
            visited[i] = false
            sum -= arr[i]
        }
    }
}

backTracking()
print(answer)