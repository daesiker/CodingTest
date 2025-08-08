import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }


var end = 0
var set = Set<Int>()
var answer = 0

for start in 0..<n {

    while end < n {
        if !set.contains(arr[end]) {
            set.insert(arr[end])
            end += 1
        } else {
            break
        }
    }
    answer += set.count
    set.remove(arr[start])

}

print(answer)
