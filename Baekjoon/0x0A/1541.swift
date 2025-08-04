import Foundation

let strings = readLine()!.split(separator: "-")
var answer = 0


for i in 0..<strings.count {

    let sum = strings[i].split(separator: "+").map { Int($0)! }.reduce(0) { $0 + $1}

    if i == 0 {
        answer += sum
    } else {
        answer -= sum
    }

}

print(answer)