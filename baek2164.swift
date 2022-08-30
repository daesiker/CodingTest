import Foundation

if let N = Int(readLine()!), N != 1 {

    var front = Array(stride(from: 2, through: N, by: 2))
    if N % 2 != 0 { front += [front.removeFirst()]}

    while front.count > 1 {
        let isOdd = front.count % 2 != 0
        front = front.enumerated().compactMap { $0 % 2 == 0 ? nil : $1 }
        if isOdd { front += [front.removeFirst()]}
    }

    print(front[0])
} else {
    print(1)
}