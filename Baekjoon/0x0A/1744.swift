import Foundation

let n = Int(readLine()!)!
var plusArray = [Int]()
var minusArray = [Int]()

var answer = 0

for _ in 0..<n {
    let tmp = Int(readLine()!)!

    if tmp == 1 {
        answer += 1
    } else if tmp < 0 {
        minusArray.append(tmp)
    } else if tmp > 0 {
        plusArray.append(tmp)
    }
}

plusArray.sort(by: { $0 > $1})
minusArray.sort(by: { $0 < $1 })


if plusArray.count % 2 != 0 {
    answer += plusArray.removeLast()
}

if minusArray.count % 2 != 0 {
    answer += minusArray.removeLast()
}


while plusArray.count != 0 || minusArray.count != 0 {
    if plusArray.count > 0 {
        answer += (plusArray.removeLast() * plusArray.removeLast())
    }

    if minusArray.count > 0 {
        answer += (minusArray.removeLast() * minusArray.removeLast())
    }
}

print(answer)

