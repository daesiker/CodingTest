import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let arr1 = makingArr(str1)
    let arr2 = makingArr(str2)
    
    var sum = 0
    var joined = 0
    
    //Set 함수 intersection : 2개의 Set에 공집합을 리턴
    for join in Set(arr1).intersection(Set(arr2)) {
        //공집합에 있는 원소가 몇개인지 가져옴 
        var jointedInArr1 = arr1.filter ({ $0 == join}).count
        var jointedInArr2 = arr2.filter ({ $0 == join}).count

        //공집합의 개수
        joined += min(jointedInArr1, jointedInArr2)
        //합집합의 개수
        sum += max(jointedInArr1, jointedInArr2)
    }
    
    //Set 함수 : symmetricDifference : 교집합을 제외한 합집합 
    for disjoin in Set(arr1).symmetricDifference(Set(arr2)) {
        //disjoin이 있는 개수만큼 합집합에 추가
        sum += arr1.filter({$0 == disjoin}).count + arr2.filter({$0 == disjoin }).count
    }
    
    if sum == 0 {
        return 65536
    }
    
    let res = Int(floor((Double(joined)) / Double((sum)) * 65536))
    
    return res
}

//특수문자와 숫자를 제외한 2개의 쌍으로 이루워진 문자열 배열로 리턴하는 함수
func makingArr(_ str: String) -> [String] {
    //문자열 -> 소문자만 있는 문자열 배열로 전환
    let str = Array(str).map({ $0.lowercased() })
    var result = [String]()
    
    for i in 0..<str.count - 1 {
        // ~= -> 해당 범위안에 있으면 true, 없으면 false
        if "a"..."z" ~= str[i] && "a"..."z" ~= str[i+1] {
            result.append(str[i] + str[i+1])
        }
    }
    return result
}