import Foundation

func solution(_ p:String) -> String {
    
    if p.count < 1 { return "" }
    
    var count = 0, index = p.startIndex
    
    //쌍이 나올때까지 반복 '('과 ')'의 개수가 맞아야함
    repeat {
        count += String(p[index]) == "(" ? 1 : -1
        index = p.index(after: index)
    } while count != 0
    
    //분리
    var u = String(p[..<index]), v = String(p[index...])
    
    //u가 시작이 (로 시작하면 올바른 쌍이므로 v만 재귀함수 실행
    if String(u.first!) == "(" {
        return u + solution(v)
    } else {
        //앞뒤 분리
        u.removeLast()
        u.removeFirst()
        //뒤집기
        return "(\(solution(v)))\(u.map{String($0) == "(" ? ")" : "("}.joined())"
    }
    
}