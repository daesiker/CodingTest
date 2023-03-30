import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict = [String:Int]()
    var answer = [Int]()
    for key in keymap {
        let key = key.map { String($0)}
        for i in 0..<key.count {
            if let x = dict[key[i]] {
                dict[key[i]]! = min (x, i+1)
            } else {
                dict[key[i]] = i+1
            }
        }
    }
    
    for target in targets {
        let target = target.map { String($0) }
        var tmp = 0
        for tar in target {
            if let count = dict[tar] {
                tmp += count
            } else {
                tmp = -1
                break
            }
        }
        answer.append(tmp)
    }
    
    
    return answer
}