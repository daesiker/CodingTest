import Foundation

func solution(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
    var graph = [String:String]()
    var costDic = [String:Int]()
    
    for i in 0..<enroll.count {
       graph[enroll[i]] = referral[i]
    }
    for i in 0..<seller.count {
        var cost = amount[i] * 100
        var name = seller[i]
        while true {
            if cost < 10 {
                if let _ = costDic[name] {
                    costDic[name]! += cost
                } else {
                    costDic[name] = cost
                }
                break
            } else {
                if let newName = graph[name] {
                    let remain = Int(floor(Double(cost) * 0.1))
                    if let _ = costDic[name] {
                        costDic[name]! += cost-remain
                    } else {
                        costDic[name] = cost-remain
                    }
                    cost = remain
                    name = newName
                    
                } else {
                    if let _ = costDic[name] {
                        costDic[name]! += cost
                    } else {
                        costDic[name] = cost
                    }
                    break
                }
            }
        }
    }
    
    var result = [Int]()
    
    for en in enroll {
        if let _ = costDic[en] {
            result.append(costDic[en]!)
        } else {
            result.append(0)
        }
    }
    
    return result
}