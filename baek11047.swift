import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0]
var money = nm[1]
var answer = 0
var cost:[Int] = []

for _ in 0..<n {
    let tmp = Int(readLine()!)!
    cost.append(tmp)
}

for i in cost.reversed() {
    if i > money {
        continue
    }

    let value = money / i
    answer += value

    money -= (i * value)

    if money == 0 {
        break
    }
}

print(answer)