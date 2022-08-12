import Foundation


let num = Int(readLine()!)!
var a = 1
var b = 2


if num <= 2 {
    b = num
} else {
    for _ in 2..<num {
        let tmp = a
        a = b
        b = (tmp+b)%15746
    }
}
print(b)