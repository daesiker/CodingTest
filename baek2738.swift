import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var arr1:[[Int]] = []
var arr2:[[Int]] = []

var answer:[[String]] = []

for _ in 0..<nm[0] {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    arr1.append(tmp)
}

for _ in 0..<nm[0] {
    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    arr2.append(tmp)
}

for i in 0..<nm[0] {
    var tmp:[String] = []
    for j in 0..<nm[1] {

        tmp.append(String(arr1[i][j] + arr2[i][j]))

    }
    answer.append(tmp)
}

for an in answer {
    print(an.joined(separator: " "))
}