import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }

var arr = [Int]()

for _ in 0..<nk[0] {
    arr.append(Int(readLine()!)!)
}


var start = 1
var end = arr.max()!

while start <= end {

    let mid = (start + end) / 2
    var value = 0

    for a in arr {
        value += (a / mid)
    }

    if value < nk[1] {
        end = mid - 1
    } else {
        start = mid + 1
    }
}

print(end)

