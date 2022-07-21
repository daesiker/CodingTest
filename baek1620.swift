import Foundation

var dict:[String:String] = [:]

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

for i in 1...nm[0] {
    let tmp = readLine()!

    dict[tmp] = String(i)
    dict[String(i)] = tmp
}

for _ in 0..<nm[1] {
    let tmp = readLine()!
    print(dict[tmp]!)
}