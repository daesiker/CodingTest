
import Foundation

let n = Int(readLine()!)!

var visited = Array(repeating: Int.max, count: n+1)
visited[n] = 0
var queue = [n]
var index = 0

while index < queue.count {
    let x = queue[index]
    index += 1

    if x == 1 {
        print(visited[x])
        break
    }

    if x % 3 == 0 && 1...n ~= x / 3 {
        visited[x / 3] = min(visited[x/3], visited[x] + 1)
        queue.append(x/3)
    }

    if x % 2 == 0 && 1...n ~= x / 2 {
        visited[x / 2] = min(visited[x/2], visited[x] + 1)
        queue.append(x/2)
    }

    if 1...n ~= x - 1 {
        visited[x-1] = min(visited[x-1], visited[x] + 1)
        queue.append(x-1)
    }
}