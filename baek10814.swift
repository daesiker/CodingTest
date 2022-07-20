import Foundation

let n = Int(readLine()!)!

var answer:[[String]] = []

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { String($0) }
    answer.append(tmp)
}

func compare(_ a: [String], _ b: [String]) -> Bool {
    let a1 = Int(a[0])!, b1 = Int(b[0])!

    if a1 == b1 {
        return false
    } else {
        return a1 < b1
    }
}

answer.sort(by: compare(_:_:) )

for i in answer {
    print("\(i[0]) \(i[1])")
}