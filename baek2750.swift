import Foundation

let n = Int(readLine()!)!
var answer:[Int] = []
for _ in 0..<n {
    let num = Int(readLine()!)!
    answer.append(num)
}

answer.sort()

for i in answer {
    print(i)
}
