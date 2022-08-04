import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var operandArr = readLine()!.split(separator: " ").map { Int(String($0))! }
var resultArr = [Character]()
var visited = Array(repeating: false, count: n + 1)
var maxResult = -999999999
var minResult = Int.max
var tmp = [Character]()

for i in 0..<4 {
    while operandArr[i] >= 1 {
        if i == 0 {
            tmp.append("+")
            operandArr[i] -= 1
        } else if i == 1 {
            tmp.append("-")
            operandArr[i] -= 1
        } else if i == 2 {
            tmp.append("*")
            operandArr[i] -= 1
        } else {
            tmp.append("/")
            operandArr[i] -= 1
        }
    }
}

func dfs(_ depth: Int) {
    var p = 1
    var result = arr[0]

    if depth == tmp.count {
        for i in resultArr {
            if i == "+" {
                result += arr[p]
                p += 1
            } else if i == "-" {
                result -= arr[p]
                p += 1
            } else if i == "*" {
                result *= arr[p]
                p += 1
            } else {
                result /= arr[p]
                p += 1
            }
        }

        maxResult = max(result, maxResult)
        minResult = min(minResult, result)
        return
    }

    for i in 0..<tmp.count {
        if !visited[i] {
            visited[i] = true
            resultArr.append(tmp[i])
            dfs(depth + 1)
            visited[i] = false
            resultArr.removeLast()
        }
    }

    
}

dfs(0)
print(maxResult)
print(minResult)