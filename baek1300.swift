import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!


var start = 1
var end = k
var answer = 0
while start <= end {
    let mid = (start+end) / 2
    var tmp = 0

    for i in 1...n {
        tmp += min(mid/i, n)
    }

    if tmp >= k {
        answer = mid
        end = mid - 1
    } else {
        start = mid + 1
    }
}

print(answer)