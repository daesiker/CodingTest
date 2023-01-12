import Foundation

let num = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let count = Int(readLine()!)!

var hap = [0]

for i in 0..<num {

    hap.append(arr[i] + hap[i])

}

for _ in 0..<count {

    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let value = hap[nm[1]] - hap[nm[0]-1]
    print(value)

}
