import Foundation

let strArr = readLine()!
var answer:[Int] = []
for i:UInt8 in 97...122 {
    let char = Character(UnicodeScalar(i))
    
    answer.append(strArr.filter { $0 == char }.count)
    
}

print(answer.map { String($0) }.joined(separator: " "))