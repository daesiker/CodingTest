import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    
    var orderDict = [String:Int]()
    var countDict = [Int:[(String, Int)]]()
    
    var temp = [String]()
    
    //메뉴를 콤비네이션으로 조합
    func combination(_ target: [String], _ idx: Int, _ count: Int, _ limit: Int) {
        //count와 limit의 값이 같으면 temp값의 문자배열을 합친 문자열을 orderDict에 추가 후 리턴
        if count == limit {
            let s = temp.reduce("", +)
            orderDict[s] = orderDict[s] == nil ? 1 : orderDict[s]! + 1
            return
        }
        

        for i in idx..<target.count {
            temp.append(target[i])
            combination(target, i + 1, count + 1, limit)
            temp.removeLast()
        }
    }
    
    for limit in course {
        for order in orders {
            //문자열 -> 정렬된 배열로 변경
            let sortedOrder = order.map{ String($0) }.sorted()
            combination(sortedOrder, 0, 0, limit)
        }
    }
    
    orderDict.filter { $0.value >= 2 }.forEach {
        if countDict[$0.key.count] == nil {
            countDict[$0.key.count] = [($0.key,$0.value)]
        }else {
            countDict[$0.key.count]!.append(($0.key,$0.value ))
        }
    }
    
    var answer = [String]()
    for limit in course {
        if countDict[limit] != nil {
            let list = countDict[limit]!.sorted(by: {$0.1 > $1.1})
            answer.append(contentsOf: list.filter{list.first!.1 == $0.1}.map{$0.0})
        }
    }
    
    return answer.sorted(by: <)
}

solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4])