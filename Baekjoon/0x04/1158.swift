import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }


var array = Array(1...input[0])
var result:[Int] = []
var index = 0

while !array.isEmpty {

    index = (index + input[1]-1) % array.count

    result.append(array.remove(at: index))
}

let answer = result.map { String($0) }.joined(separator: ", ")

print("<\(answer)>")
