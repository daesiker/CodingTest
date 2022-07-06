import Foundation

func solution(_ s:String) -> [Int] {
    var tuples:[Int:[Int]] = [:]
    let strings = s.components(separatedBy: "},{")
    var answer:[Int] = []
    
    for str in strings {
        var tmp:[Int] = []
        var tmpStr:String = ""
        for s in str {
            if let _ = Int(String(s)) {
                tmpStr += String(s)
            } else if s == "," {
                tmp.append(Int(tmpStr)!)
                tmpStr = ""
            }
        }
        tmp.append(Int(tmpStr)!)
        tuples[tmp.count] = tmp
    }
    
    let sortedKeys = Array(tuples.keys).sorted(by: <)
    
    for key in sortedKeys {
        for i in tuples[key]! {
            if !answer.contains(i) {
                answer.append(i)
            }
        }
    }
    
    
    return answer
}