import Foundation

func solution(_ record:[String]) -> [String] {
    
    var nameDic:[String:String] = [:]
    var result:[[String]] = []
    
    for re in record {
        let split = re.components(separatedBy: " ")
        
        if split[0] == "Enter"  {
            let tmp = [split[0], split[1]]
            result.append(tmp)
            nameDic[split[1]] = split[2]
        } else if split[0] == "Leave" {
            let tmp = [split[0], split[1]]
            result.append(tmp)
        } else {
            nameDic[split[1]] = split[2]
        }
        
    }
    
    let answer = result.map({ (re:[String]) -> String in 
        if re[0] == "Enter" {
            return "\(nameDic[re[1]]!)님이 들어왔습니다."
        } else {
            return "\(nameDic[re[1]]!)님이 나갔습니다."
        }
    })
    
    return answer
}