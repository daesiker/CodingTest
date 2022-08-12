import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

for _ in 0..<nm[1] {
    let ij = readLine()!.split(separator: " ").map { Int(String($0))! }
    var answer = 0
    for i in ij[0]-1...ij[1]-1 {
        answer += arr[i]
    }
    print(answer)
}