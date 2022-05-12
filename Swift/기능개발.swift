import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var answer:[Int] = []
    
    var jobs:[Int] = []
    
    for i in 0..<speeds.count {
        let num = Int(ceil(Double(100 - progresses[i]) / Double(speeds[i])))
        jobs.append(num)
    }
    
    var tmp = jobs[0]
    var count = 1
    //7, 4, 9
    for i in 1..<jobs.count {
        if jobs.count - 1 == i {
            if tmp >= jobs[i] {
                count += 1
                answer.append(count)
            } else {
                answer.append(count)
                answer.append(1)
            }
        } else {
            if tmp >= jobs[i] {
                count += 1
            } else {
                answer.append(count)
                tmp = jobs[i]
                count = 1
            }
        }
    }
    
    return answer
}