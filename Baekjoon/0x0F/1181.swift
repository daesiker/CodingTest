import Foundation

let n = Int(readLine()!)!

var arr = Set<String>()

for _ in 0..<n {
    let tmp = readLine()!

    arr.insert(tmp)
}

let answer = Array(arr).sorted(by: { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }).joined(separator: "\n")

print(answer)