import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var dic:[Int:Int] = [:]

for num in arr {
    if let _ = dic[num] {
        dic[num]! += 1
    } else {
        dic[num] = 1
    }
}

let m = Int(readLine()!)!

let targets = readLine()!.split(separator: " ").map { Int($0)! }

var answer = ""

for target in targets {
    if let x = dic[target] {
        answer += "\(x) "
    } else {
        answer += "0 "
    }


}

print(answer)
