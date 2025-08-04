import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }
let sortedArr = arr.sorted()


var dic:[Int:Int] = [:]
var next = 0

for i in 0..<n {
    let value = sortedArr[i]
    if dic[value] == nil {
        dic[value] = next
        next += 1
    }
}

print(arr.map { String(dic[$0]!)}.joined(separator: " "))

