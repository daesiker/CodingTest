import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {

    let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

    let m = nm[1]
    var queue = readLine()!.split(separator: " ").enumerated().map { ($0, Int(String($1))!) }
    var rank = 1
    while true {

        let x = queue.removeFirst()
        var breakPoint = false

        for q in queue {
            if x.1 < q.1 {
                breakPoint = true
                break
            }
        }

        if breakPoint {
            queue.append(x)
            
        } else {
            if x.0 == m {
                print(rank)
                break
            } else {
                rank += 1
            }
        }
    }

}