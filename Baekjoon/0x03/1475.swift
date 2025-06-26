import Foundation

let arr = readLine()!.map { Int(String($0))! }
var dic:[Int:Int] = [:]

for a in arr {
    var key = 0
    if a == 6 || a == 9 {
        key = 6
    } else {
        key = a
    }

    if let _ = dic[key] {
        dic[key]! += 1
    } else {
        dic[key] = 1
    }
}


var answer = 0
for (k, v) in dic {
    let tmp: Int = {
        if k == 6 {
            if v % 2 == 0 {
                return v / 2
            } else {
                return v / 2 + 1
            }
        } else {
            return v
        }
    }()
    

    answer = max(answer, tmp)
}


print(answer)

