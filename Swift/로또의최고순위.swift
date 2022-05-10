import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var answer = [7, 7]
    
    
    for lotto in lottos {
        //0일때는 첫번째 인덱스에서만 -1
        if lotto == 0 {
            answer[0] -= 1
        } else if win_nums.contains(lotto) {
            answer[0] -= 1
            answer[1] -= 1
        }
    }
    
    if answer[0] == 7 {
        answer[0] -= 1
    }
    if answer[1] == 7 {
        answer[1] -= 1
    }
    
    
    return answer
    
    
}