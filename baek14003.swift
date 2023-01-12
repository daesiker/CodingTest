import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var lis:[Int] = []
var record:[(Int:Int)] = []

var len = arr.count

