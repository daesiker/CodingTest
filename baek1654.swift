import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (k, n) = (input[0], input[1])
var arr:[Int] = []
for _ in 0..<k { arr.append(Int(readLine()!)!)}

var (start, end) = (1, arr.max()!)

while start <= end {
    let mid = (start + end) / 2
    var total = 0
    arr.forEach { e in 
        total += e/mid
    }

    if total < n { end = mid - 1 }
    else { start = mid + 1}
}

print(end)