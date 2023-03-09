import Foundation

func solution(_ common:[Int]) -> Int {
    
    if let answer = arithmetic(common) {
        return answer + common[common.count-1]
    } else if let answer = geometric(common) {
        return answer * common[common.count-1]
    }
    
    return 0
}

func arithmetic(_ common:[Int]) -> Int? {
    
    let sequence = common[1] - common[0]
    
    for i in 2..<common.count {
        let value = common[i] - common[i-1]
        
        if value != sequence {
            return nil
        }
    }
    
    return sequence
    
}

func geometric(_ common:[Int]) -> Int? {
    
    let sequence = common[1] / common[0]
    
    for i in 2..<common.count {
        let value = common[i] / common[i-1]
        
        if value != sequence {
            return nil
        }
    }
    
    return sequence
    
}