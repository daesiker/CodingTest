import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, l, r) = (input[0], input[1], input[2])

var graph:[[Int]] = {
    var graph:[[Int]] = []
    for _ in 0..<n {
        let tmp = readLine()!.components(separatedBy: " ").map { Int($0)! }
        graph.append(tmp)
    }
    return graph
}()

