import Foundation

let n = Int(readLine()!)!
var answer:[[Int]] = []

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    answer.append(tmp)
}

func compare(_ a: [Int], _ b: [Int]) -> Bool {
    if a[1] == b[1] {
        return a[0] < b[0]
    } else {
        return a[1] < b[1]
    }
}

answer.sort(by: compare(_:_:))

for i in answer {
    print("\(i[0]) \(i[1])")
}