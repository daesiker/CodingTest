import Foundation

func solution(_ topping:[Int]) -> Int {
    var answer = 0
    var cDic = [Int:Int]()
    var bDic = [Int:Int]()
    
    for t in topping {
        if let _ = cDic[t] {
            cDic[t]! += 1
        } else {
            cDic[t] = 1
        }
    }
    
    for t in topping {
        if cDic[t]! == 1 {
            cDic.removeValue(forKey: t)
        } else {
            cDic[t]! -= 1
        }
        if let _ = bDic[t] {
            bDic[t]! += 1
        } else {
            bDic[t] = 1
        }
        
        if cDic.keys.count == bDic.keys.count {
            answer += 1
        }
        
    }
    
    return answer
}