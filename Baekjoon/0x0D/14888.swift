import Foundation

// 첫째 줄에 수의 개수 N(2 ≤ N ≤ 11)가 주어진다. 둘째 줄에는 A1, A2, ..., AN이 주어진다. 
// (1 ≤ Ai ≤ 100) 셋째 줄에는 합이 N-1인 4개의 정수가 주어지는데, 차례대로 덧셈(+)의 개수, 뺄셈(-)의 개수, 곱셈(×)의 개수, 나눗셈(÷)의 개수이다.

let n = Int(readLine()!)!

let numArr = readLine()!.split(separator: " ").map { Int($0)! }
var opArr = readLine()!.split(separator: " ").map { Int($0)! } // [+, -, *, %]

var maxValue = -Int.max
var minValue = Int.max
var operators = [[String]]()

var stack = [String]()

backTracking()

for op in operators {
    var tmp = 0
    for i in 0..<n {
        if i == 0 {
            tmp = numArr[i]
            continue
        }

        if op[i-1] == "+" {
            tmp += numArr[i]
        } else if op[i-1] == "-" {
            tmp -= numArr[i]
        } else if op[i-1] == "*" {
            tmp *= numArr[i]
        } else {
            tmp /= numArr[i]
        }

    }
    maxValue = max(maxValue, tmp)
    minValue = min(tmp, minValue)
}

print(maxValue)
print(minValue)

func backTracking() {
    if stack.count == n-1 {
        operators.append(stack)
        return
    }

    for i in 0..<opArr.count {
        if opArr[i] == 0 {
            continue
        }

        switch i {
        case 0:
            stack.append("+")
        case 1:
            stack.append("-")
        case 2:
            stack.append("*")
        case 3:
            stack.append("/")
        default:
            break
        
        }

        opArr[i] -= 1
        backTracking()
        opArr[i] += 1
        stack.removeLast()

    }
}
