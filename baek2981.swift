import Foundation

let n = Int(readLine()!)!
var array:[Int] = []

for _ in 0..<n {
    let num = Int(readLine()!)!
    array.append(num)
}

array.sort()
var answer:[Int] = []

for i in 2...array[0] {
    
    let x = array[0] % i
    var breakPoint = false
    for j in array {
        if j % i == x {
            continue
        } else {
            breakPoint = true
            break
        }
    }

    if !breakPoint {
        answer.append(i)
    }

}

let printer = answer.map { String($0) }.joined(separator: " ")
print(printer)