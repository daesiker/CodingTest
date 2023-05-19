import Foundation

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var wins = [Int:Set<Int>]()
    var loses = [Int:Set<Int>]()
    for i in 1...n {
        wins[i] = []
        loses[i] = []
    }
    for i in 1...n {
        for result in results {
            if result[0] == i {
                wins[i]!.insert(result[1])
            }
            if result[1] == i {
                loses[i]!.insert(result[0])
            }
        }
        for winner in loses[i]! {
            wins[winner] = wins[winner]!.union(wins[i]!)
        }
        
        for loser in wins[i]! {
            loses[loser] = loses[loser]!.union(loses[i]!)
        }
    }
    
    var answer = 0
    
    for i in 1...n {
        if wins[i]!.count + loses[i]!.count == n-1 {
            answer += 1
        }
    }
    
    return answer
}