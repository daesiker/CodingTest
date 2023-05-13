import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)

var (res, w1, w2, w3) = (Int.max, 0, 0, 0)

for k in 0..<n-2 {
    var start = k+1
    var end = n-1

    while start < end {

        let target = arr[start] + arr[end] + arr[k]

        if abs(target) < abs(res) {
            res = target
            w1 = arr[k]
            w2 = arr[start]
            w3 = arr[end]
        }

        if target > 0 {
            end -= 1
        } else {
            start += 1
        }
    }
}

print(w1, w2, w3)