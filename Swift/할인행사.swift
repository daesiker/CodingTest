import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var answer = 0
    var wantDic:[String:Int] = [:]
    
    for i in 0..<want.count {
        wantDic[want[i]] = number[i]
    }
    
    var disDic:[String:Int] = [:]
    
    for i in 0..<10 {
        if let _ = disDic[discount[i]] {
            disDic[discount[i]]! += 1
        } else {
            disDic[discount[i]] = 1
        }
    }
    
    if discount.count > 10 {
        for i in 10..<discount.count {
            
            if let x = disDic[discount[i-10]],
                x > 1 {
                disDic[discount[i-10]]! -= 1
            } else {
                disDic[discount[i-10]] = nil
            }
            

            if let _ = disDic[discount[i]] {
                disDic[discount[i]]! += 1
            } else {
                disDic[discount[i]] = 1
            }
            
            if check(wantDic, disDic) {
                answer += 1
            }
        }
    } else {
        if check(wantDic, disDic) {
            answer += 1
        }
    }
    
    return answer
}

func check(_ wantDic: [String:Int], _ disDic:[String:Int]) -> Bool {
    
    for (k,v) in wantDic {
        
        if let tmp = disDic[k] {
            if tmp < v {
                return false
            }
        } else {
            return false
        }
    }
    return true
}

print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))