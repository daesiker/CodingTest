import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
var board:[[String]] = []

for  i in 0..<nm[0] {

    let tmp = String(readLine()!).joined(separator: "")
    board.append(tmp)

}

print(board)