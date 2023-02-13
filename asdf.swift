import Foundation

public func solution(_ S : inout String) -> Int {
    var answer = Int.max
    var alphabet:[String:Int] = [:]
    let arr = S.map { String($0) }
    
    if arr.count == Set(arr).count {
        return 1
    }

    var dupStr:[String] = []

    for alp in arr {
        if let _ = alphabet[alp] {
            if !(dupStr.contains(alp)) {
                dupStr.append(alp)
            }
        } else {
            alphabet[alp] = 1
        }
    }

    var count = 0

    while count != dupStr.count {
        var tmp:[String] = []
        for str in dupStr {
            tmp = S.components(separatedBy: str)
            if check(arr) {
                answer = arr.count
                break
            }
        }
        dupStr.append(dupStr.removeFirst())
        count += 1

    }

    return answer
}

func check(_ arr: [String]) -> Bool{

    for subString in arr {

        let tmp = subString.map { String($0) }
    
        if !(tmp.count == Set(tmp).count) {
            return false
        }
    }

    return true
}
var str = "cycle"
print(solution(&str))