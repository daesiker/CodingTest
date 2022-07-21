import Foundation

let n = Int(readLine()!)!

var dict:[String:Int] = [:]

let cards = readLine()!.split(separator: " ").map { String($0)}

for card in cards {
    if dict[card] == nil {
        dict[card] = 1
    } else {
        dict[card]! += 1
    }
}

let m = Int(readLine()!)!

let answer = readLine()!.split(separator: " ").map { dict[String($0)] == nil ? "0" : String(dict[String($0)]!)}.joined(separator: " ")
print(answer)
