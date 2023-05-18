import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    func bfs() -> Int {
        var visited = Array(repeating: false, count: words.count)
        typealias Node = (word: String, depth:Int)
        var queue:[Node] = [(begin, 0)]
        
        while !queue.isEmpty {
            let (word, depth) = queue.popLast()!
            
            if word == target {
                return depth
            }
            for i in 0..<words.count {
                if visited[i] {
                    continue
                }
                
                var cnt = 0
                let newWords = Array(words[i])
                let preWords = Array(word)
                for j in 0..<newWords.count {
                    if preWords[j] != newWords[j] {
                        cnt += 1
                    }
                }
                
                if cnt == 1 {
                    visited[i] = true
                    queue.append((words[i], depth+1))
                }
            }
        }
        
        return 0
    }
    
    if !words.contains(target) {
        return 0
    } else {
       return bfs()
    }
}