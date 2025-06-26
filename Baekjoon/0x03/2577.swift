import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

let sum = String(a * b * c).map { String($0) }

var answer:[Int] = []

for i in 0...9 {
    answer.append(sum.filter { $0 == String(i) }.count )

}

print(answer.map { String($0) }.joined(separator: "\n"))
