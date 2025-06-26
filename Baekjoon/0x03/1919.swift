import Foundation

let a = readLine()!.split(separator: "").map { String($0) }
var b = readLine()!.split(separator: "").map { String($0) }


var answer = 0

for i in 0..<a.count {
    if let index = b.firstIndex(of: a[i]) {
        b.remove(at: index)
        answer += 1
    }
}

print(a.count + b.count - answer)