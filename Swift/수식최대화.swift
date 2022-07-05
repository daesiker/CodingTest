import Foundation

enum Operation: Character {
    
    case multiple = "*"
    case plus = "+"
    case minus = "-"
    
    func operate(_ n1: Int64, _ n2: Int64) -> Int64 {
        switch self {
            case .multiple: return n1 * n2
            case .plus: return n1 + n2
            case .minus: return n1 - n2
            default: return -1
        }
    }
}

func operate(numbers: [Int64], opers:[Character], prior:[Operation]) -> Int64 {
    var numbers = numbers
    var opers = opers
    
    for oper in prior {
        //oper의 연산기호가 다 사라질 때까지 연산 반복
        while let index = opers.firstIndex(of: oper.rawValue) {
            numbers[index] = oper.operate(numbers[index], numbers[index+1])
            numbers.remove(at: index + 1)
            opers.remove(at: index)
        }
    }
    
    return abs(numbers[0])
}

func solution(_ expression:String) -> Int64 {
    //숫자와 연산기호를 분리하는 작업
    let numbers = expression.components(separatedBy: ["*", "+", "-"]).map { abs(Int64($0)!)}
    let opers = Array(expression.filter({ Int(String($0)) == nil }))
    let myOper = "*+-"
    var maxValue:Int64 = 0
    
    //사칙연산의 순번을 만든다.
    for first in myOper {
        for second in myOper {
            //중복되면 다음 반복문 실행
            guard first != second else { continue }
            
            //나머지 하나를 필터링하는 작업
            let third = "*+-".filter({ $0 != first && $0 != second })[0]

            let result = operate(numbers: numbers, opers: opers, prior: [
                Operation(rawValue: first)!,
                Operation(rawValue: second)!,
                Operation(rawValue: third)!
            ])      
            maxValue = max(maxValue, result)
        }
    }
    
    return maxValue
}