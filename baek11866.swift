import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
var N = nk[0]
let K = nk[1]


var array = Array(stride(from: 1, through: N, by: 1))
var index = -1

var answer = "<"
while array.count > 0 {

    index = (K+index) % N
    
    answer += "\(array.remove(at: index)), "
    index -= 1
    N -= 1
}

answer.removeLast()
answer.removeLast()
answer += ">"
print(answer)
