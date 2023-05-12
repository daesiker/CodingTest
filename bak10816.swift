import Foundation

let num = Int(readLine()!)!

var arr = readLine()!.components(separatedBy: " ").map { Int($0)! }

var m = Int(readLine()!)!
var arr2 = readLine()!.components(separatedBy: " ").map { Int($0)! }
var answer = ""
var dic:[Int:Int] = [:]

arr.forEach { num in 
    if let _ = dic[num] {
        dic[num]! += 1
    } else {
        dic[num] = 1
    }
}

for num in arr2 {
    if let count = dic[num] {
        answer += "\(count) "
    } else {
        answer += "0 "
    }
}

print(answer)

