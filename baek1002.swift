import Foundation

let num = Int(readLine()!)!

for _ in 0..<num {
    let list = readLine()!.split(separator: " ").map { Int(String($0))! }

    let x = Double(abs(list[0] - list[3]))
    let y = Double(abs(list[1] - list[4]))

    let distance = pow(pow(x, 2) + pow(y, 2), 0.5)
    let sum = Double(list[2] + list[5])
    let dif = Double(abs(list[2] - list[5]))

    if distance == 0 {
        if list[2] == list[5] {
            print(-1)
        } else {
            print(0)
        }
    } else {
        if sum == distance || dif == distance {
            print(1)
        } else if dif < distance && distance < sum {
            print(2)
        } else {
            print(0)
        }
    }
}