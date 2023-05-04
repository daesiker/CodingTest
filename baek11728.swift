import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])

let arr1 = readLine()!.components(separatedBy: " ").map { Int($0)! }
let arr2 = readLine()!.components(separatedBy: " ").map { Int($0)! }

var i = 0
var j = 0
var answer = ""
while i < n || j < m {
    if i == n {
        answer += "\(arr2[j]) "
        j += 1
    } else if j == m {
        answer += "\(arr1[i]) "
        i += 1
    }else if arr1[i] > arr2[j] {
        answer += "\(arr2[j]) "
        j += 1
    } else {
        answer += "\(arr1[i]) "
        i += 1
    }


}

print(answer)