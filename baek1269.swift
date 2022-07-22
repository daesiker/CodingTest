import Foundation

let _ = readLine()!

var a = Set(readLine()!.split(separator: " ").map { Int(String($0))!} )
var b = Set(readLine()!.split(separator: " ").map { Int(String($0))! } )

let answer = a.symmetricDifference(b)

print(answer.count)