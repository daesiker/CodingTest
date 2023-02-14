import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var attack = [Int](repeating: 0, count: number+1)

    for i in 1...number {
        var c = i

        while c <= number {
            attack[c] += 1
            c += i
        }
    }
    attack = attack.map { $0 > limit ? power : $0 }
    return attack.reduce(0, +)
}