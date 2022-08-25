import Foundation

let n = Int(readLine()!)!

var array = readLine()!.split(separator: " ").map { Int(String($0))! }
var stack = [Int]()

for i in 0..<n {

    while !stack.isEmpty && array[stack.last!] < array[i] {
        array[stack.removeLast()] = array[i]
    }

    //[0]
    
    stack.append(i)
}

for i in stack {
    array[i] = -1
}
print(array.map { String($0)}.joined(separator: " "))