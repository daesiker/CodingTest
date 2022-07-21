import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

var strs = Set<String>()

for _ in 0..<nm[0] {
    let tmp = readLine()!
    strs.insert(tmp)
}

let count = strs.count
var answer = 0
for _ in 0..<nm[1] {
    let tmp = readLine()!

    strs.insert(tmp)

    if count == strs.count {
        answer += 1
    } else {
        strs.remove(tmp)
    }
}

print(answer)