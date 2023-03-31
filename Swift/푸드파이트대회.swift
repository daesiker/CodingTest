import Foundation

func solution(_ food:[Int]) -> String {
    var food = food.enumerated().map { [$0.0, $0.1] }.sorted(by: <)
    
    var answer = ""
    
    for foo in food {
        answer += String(repeating: String(foo[0]), count: foo[1] / 2)
    }
    
    
    return "\(answer)0\(String(answer.reversed()))"
}