import Foundation

let n = Int(readLine()!)!

var dic:[String:Bool] = [:]

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { String($0)}
    let newValue = tmp[1] == "leave" ? false : true


    if let _ = dic[tmp[0]] {
        dic[tmp[0]]! = newValue
    } else {
        dic[tmp[0]] = newValue
    }
}

let answer = dic.keys.filter { dic[$0]! }.sorted(by: {$0 > $1})
print(answer.joined(separator: "\n"))