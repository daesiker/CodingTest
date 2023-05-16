import Foundation

func solution(_ s:String) -> Int {
    let s = Array(s)
    var answer = 1
    if s.count == 1 { return 1 }
    else if s.count == 2 { return s[0] == s[1] ? 2 : 1}
    for i in 0..<s.count-1 {
        for j in i+1..<s.count {
            if s[i] == s[j] {
                if check(s, i, j) {
                    answer = max(answer, j-i+1)
                }
            }
        }
        if answer == s.count - i { return answer}
        
    }
    return answer
}

func check(_ s:[Character], _ start: Int, _ end: Int) -> Bool {
    var start = start+1
    var end = end-1
    while start < end {
        if s[start] != s[end] {
            return false
        } else {
            start += 1
            end -= 1
        }
    }
    return true
}

