import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let arr1 = readLine()!.split(separator: " ").map { String($0) }
let arr2 = readLine()!.split(separator: " ").map { String($0) }
let answer = Array(Set(arr1 + arr2)).sorted()

print(answer.joined(separator: " "))