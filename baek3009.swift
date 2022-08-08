import Foundation

var xs:[Int:Int] = [:]
var ys:[Int:Int] = [:]

for _ in 0..<3 {
    let xy = readLine()!.split(separator: " ").map { Int(String($0))! }

    if let _ = xs[xy[0]] {
        xs[xy[0]]! += 1
    } else {
        xs[xy[0]] = 1
    }

    if let _ = ys[xy[1]] {
        ys[xy[1]]! += 1
    } else {
        ys[xy[1]] = 1
    }
}

var answer:[String] = []

for (k,v) in xs {

    if v == 1 {
        answer.append(String(k))
    }

}

for (k,v) in ys {

    if v == 1 {
        answer.append(String(k))
    }

}

let printValue = answer.joined(separator: " ")

print(printValue)