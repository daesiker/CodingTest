import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int($0)! }
var board:[[Character]] = []

for _ in 0..<nm[0] {

    let tmp = readLine()!.map { $0 }
    board.append(tmp)

}


func bruteForce(_ flag: Bool) -> Int {
    var flag = flag
    var string:Character = flag ? "B" : "W"
    var answer = 0

    for i in 0..<board.count {
        string = flag ? "B" : "W"
        for j in 0..<board[i].count {
            if board[i][j] != string {
                answer += 1
            }
            string = string == "B" ? "W" : "B"
        }
        flag.toggle()
    }

    return answer

}

let a = bruteForce(true)
let b = bruteForce(false)

print(min(a, b))