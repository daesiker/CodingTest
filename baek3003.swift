import Foundation

let chess = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer = ""
for i in 0..<chess.count {

    if i == 0 || i == 1 {
        answer += "\(1-chess[i]) "
    } else if i == 2 || i == 3 || i == 4 {
        answer += "\(2-chess[i]) "
    } else {
        answer += "\(8-chess[i])"
    }

}

print(answer)