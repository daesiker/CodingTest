import Foundation

let n = Int(readLine()!)!
let possible = "Possible"
let impossible = "Impossible"
for _ in 0..<n {
    let strs = readLine()!.split(separator: " ")

    let a = strs[0].sorted()
    let b = strs[1].sorted()

    if a == b {
        print(possible)
    } else {
        print(impossible)
    }

}