import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var answer:[Int] = []
    var queue:[Int] = []
    
    for s in score {
        queue.append(s)
        queue.sort()
        if queue.count > k {
            queue.removeFirst()
        }
        
        answer.append(queue[0])
        
    }
    
    
    return answer
}