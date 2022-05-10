import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var tmp = [0,0,0]
    
    let person1 = [1,2,3,4,5]
    let person2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let person3 = [3, 3, 1,1,2,2,4,4,5,5]
    
    for i in 0..<answers.count {
        if person1[i % 5] == answers[i] {
            tmp[0] += 1
        }
        
        if person2[i%8] == answers[i] {
            tmp[1] += 1
        }
        
        if person3[i%10] == answers[i] {
            tmp[2] += 1
        }
    }
    
    var answer:[Int] = []
    for i in 0..<tmp.count {
        if tmp[i] == tmp.max() {
            answer.append(i+1)
        }
    }
    
    
    return answer
}