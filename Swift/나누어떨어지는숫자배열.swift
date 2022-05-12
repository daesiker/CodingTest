func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer:[Int] = []
    
    
    for a in arr {
        if a % divisor == 0 {
            answer.append(a)
        }
    }
    
    if answer.count == 0 {
        return [-1]
    }
    
    return answer.sorted()
}