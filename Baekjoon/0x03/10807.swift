import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

let v = Int(readLine()!)!

print(arr.filter { $0 == v }.count)