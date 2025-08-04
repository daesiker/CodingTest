import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var hap:[Int] = [0, arr[0]]

for i in 1..<arr.count {
    hap.append(hap[i] + arr[i])
}

var answer:[String] = []

for _ in 0..<nm[1] {
    let ij = readLine()!.split(separator: " ").map { Int($0)! }

    let tmp = hap[ij[1]] - hap[ij[0]-1]
    answer.append(String(tmp))
}

print(answer.joined(separator: "\n"))