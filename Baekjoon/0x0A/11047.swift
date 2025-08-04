import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var coins = [Int]()
var target = nm[1]
var index = nm[0] - 1

for _ in 0..<nm[0] {
    let tmp = Int(readLine()!)!
    coins.append(tmp)
}

var answer = 0

while target != 0 {

    let value = coins[index]

    answer += (target / value)

    target = target % value


    index -= 1


}

print(answer)