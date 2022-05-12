func solution(_ a:Int, _ b:Int) -> Int64 {
    var answer = 0
    
    if a == b {
        return Int64(a)
    } else if a > b {
        for i in b...a {
            answer += i
        }
    } else {
        for i in a...b {
            answer += i
        }
    }
    
    
    
    
    return Int64(answer)
}