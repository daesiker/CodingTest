import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n ,m) = (nm[0], nm[1])
var dic = [String: String]() 

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { String($0) }
    dic[tmp[0]] = tmp[1]
}

var answer = [String]()

for _ in 0..<m {
    let key = readLine()!

    answer.append(dic[key]!)
}

print(answer.joined(separator: "\n"))

