import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var dic1:[String:Int] = [:]
var dic2:[Int:String] = [:]

for i in 1...nm[0] {
    let tmp = readLine()!

    dic1[tmp] = i
    dic2[i] = tmp
}

var answer = ""

for _ in 0..<nm[1] {
    let tmp = readLine()!

    if let isInt = Int(tmp) {
        answer += "\(dic2[isInt]!)\n"
    } else {
        answer += "\(dic1[tmp]!)\n"
    }
}

print(answer)