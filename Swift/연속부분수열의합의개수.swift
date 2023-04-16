import Foundation

func solution(_ elements:[Int]) -> Int {
    var answer = Set<Int>()
    
    for i in 0..<elements.count {
        var tmp = elements[i]
        answer.insert(tmp)
        for j in 1..<elements.count {
            let index = (i+j) % elements.count
            tmp += elements[index]
            answer.insert(tmp)
        }
    }
    
    return answer.count
}