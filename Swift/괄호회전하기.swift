import Foundation

func solution(_ s:String) -> Int {
    
    var s = Array(s)
    var answer = 0
    
    for _ in 0..<s.count {
        var stack:[String.Element] = []
        var breakPoint = false
        
        for str in s {
            if str == "(" || str == "{" || str == "[" {
                stack.append(str)
            } else {
                if str == ")" && stack.last == "(" {
                    stack.popLast()
                } else if str == "]" && stack.last == "[" {
                    stack.popLast()
                } else if str == "}" && stack.last == "{" {
                    stack.popLast()
                } else {
                    breakPoint = true
                    break
                }
            }
            
        }
        
        if !breakPoint && stack == [] {
            answer += 1
        }
        
        s.append(s.removeFirst())
        
    }
    
    
    return answer
}