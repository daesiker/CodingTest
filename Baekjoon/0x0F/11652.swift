import Foundation

let n = Int(readLine()!)!

var dic:[Int: Int] = [:]
var set:Set<Int> = []

for _ in 0..<n {
    let tmp = Int(readLine()!)!

    set.insert(tmp)
    if let _ = dic[tmp] {
        dic[tmp]! += 1
    } else {
        dic[tmp] = 1
    }
}

var answer = dic.keys.first!

for a in set {
    if dic[answer]! < dic[a]! {
        answer = a
    } else if dic[answer]! == dic[a]! {
        answer = min(answer, a)
    }

}

print(answer)