import Foundation

var dices = readLine()!.split(separator: " ").map { Int(String($0))! }
var dict:[Int:Int] = [:]

for dice in dices {
    if dict[dice] == nil {
        dict[dice] = 1
    } else {
        dict[dice]! += 1
    }
}


if dict.count == 1 {
    print(10000 + (dices[0] * 1000))
} else if dict.count == 2 {

    for (k, v) in dict {
        if v == 2 {
            print(1000 + k * 100)
        }
    }

} else {
    dices.sort()
    print(100 * dices[2])
}
