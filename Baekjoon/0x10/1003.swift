import Foundation

var zeroCount = [1, 0]
var oneCount = [0, 1]

for i in 2...40 {
    zeroCount.append(zeroCount[i-1] + zeroCount[i-2])
    oneCount.append(oneCount[i-1] + oneCount[i-2])

}

let T = Int(readLine()!)!

for _ in 0..<T {
    let n = Int(readLine()!)!

    print("\(zeroCount[n]) \(oneCount[n])")
}