import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    let perDungeons = permutation(dungeons)
    
    for dungeon in perDungeons {
        answer = max(answer, goToDungeon(dungeon, k))
    }
    
    return answer
}

func goToDungeon(_ dungeon:[[Int]], _ k: Int) -> Int {
    var count = 0
    var k = k
    
    for dun in dungeon {
        if k >= dun[0] && k >= dun[1] {
            count += 1
            k -= dun[1]
        } else {
            break
        }
    }
    
    return count
}

func permutation(_ arr:[[Int]]) -> [[[Int]]] {
    var result = [[[Int]]]()
    var visited = Array(repeating: false, count: arr.count)
    
    func permutate(_ target: [[Int]]) {
        if target.count == arr.count {
            result.append(target)
            return
        }
        
        for i in 0..<visited.count {
            if visited[i] {
                continue
            }
            
            visited[i] = true
            permutate(target + [arr[i]])
            visited[i] = false
        }
    }
    permutate([])
    return result
}