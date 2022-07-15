import Foundation

let n = Int(readLine()!)!
var tuples:[(Int, Int)] = []
var answer:[String] = []

for _ in 0..<n {
    let tuple = readLine()!.components(separatedBy: " ")
    tuples.append((Int(tuple[0])!, Int(tuple[1])!))
}

for i in 0..<n {
    var rank = 1

    for j in 0..<n {
        if i == j { continue }

        if tuples[i].0 < tuples[j].0 && tuples[i].1 < tuples[j].1 {
            rank += 1
        }

    }

    answer.append(String(rank))
}

let a = answer.joined(separator: " ")
print(a)