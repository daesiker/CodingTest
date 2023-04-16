import Foundation

func solution(_ cards:[Int]) -> Int {
    var box = Set<[Int]>()
    //var dp = Array(repeating: false, count: cards.count)
    for i in 0..<cards.count {
        
        var tmp = [i+1]
        //dp[i+1] = true
        while true {
            //let value =cards[tmp[tmp.count-1]-1]
            if !tmp.contains(cards[tmp[tmp.count-1]-1]) {
                tmp.append(cards[tmp[tmp.count-1]-1])
            } else {
                break
            }
            
        }
        
        box.insert(tmp.sorted())
        
    }
    let answer = Array(box).map{ $0.count }.sorted(by: > )
    
    if answer.count > 1 {
        return answer[0] * answer[1]
    } else {
       return 0
    }
    
}