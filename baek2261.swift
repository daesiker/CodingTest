import Foundation

let n = Int(readLine()!)!

let graph = Array(repeating: Array(repeating: 0, count: 10001), count: 10001)

for _ in 0..<n {
    let xy = readLine()!.components(separatedBy: " ").map { Int($0)! }
    graph[xy[0]][xy[1]] = 1
}

var answer = 0


func division(_ x: Int, _ y: Int)
