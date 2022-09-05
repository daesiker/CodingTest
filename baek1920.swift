import Foundation

let N = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
arr.sort()

var _ = Int(readLine()!)!

let find = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer = ""
func binary(_ element: Int) -> Bool {
    var left = 0
    var right = N-1

    while left <= right {
        let mid = (left+right) / 2
        let value = arr[mid]

        if value == element {
            return true
        } else if value > element {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }

    return false
}


find.forEach { value in 
    answer += binary(value) ? "1\n" : "0\n"
}

print(answer)